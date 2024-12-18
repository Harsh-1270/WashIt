package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmailServlet extends HttpServlet {

    // Database connection details
    private static final String DB_URL = "jdbc:mysql://localhost:3307/washit"; 
    private static final String DB_USER = "root"; 
    private static final String DB_PASSWORD = "1234"; 

    // Sender's email and password
    private static final String SENDER_EMAIL = "harshtutorials127@gmail.com";
    private static final String SENDER_PASSWORD = "kawb ygol ohrv ialp"; 
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String firstName = request.getParameter("firstName");
        String emailBody = request.getParameter("emailBody");

        if (firstName == null || firstName.trim().isEmpty()) {
            out.println("<script>alert('First Name is required!'); window.location='manage_order.jsp';</script>");
            return;
        }

        if (emailBody == null || emailBody.trim().isEmpty()) {
            out.println("<script>alert('Email body is required!'); window.location='manage_order.jsp';</script>");
            return;
        }

        String email = null;
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement("SELECT email FROM students WHERE first_name = ?")) {
            preparedStatement.setString(1, firstName);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                email = resultSet.getString("email");
            } else {
                out.println("<script>alert('No email found for the given first name.'); window.location='manage_order.jsp';</script>");
                return;
            }
        } catch (Exception e) {
            out.println("<script>alert('Error fetching email: " + e.getMessage() + "'); window.location='manage_order.jsp';</script>");
            return;
        }

        if (email != null) {
            try {
                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");

                Session session = Session.getInstance(props, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(SENDER_EMAIL, SENDER_PASSWORD);
                    }
                });

                Message message = new MimeMessage(session);
                message.setFrom(new InternetAddress(SENDER_EMAIL));
                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                message.setSubject("Notification from WashIt");
                message.setText(emailBody);

                Transport.send(message);

                out.println("<script>alert('Email sent successfully!'); window.location='manage_order.jsp';</script>");
            } catch (MessagingException e) {
                out.println("<script>alert('Error sending email: " + e.getMessage() + "'); window.location='manage_order.jsp';</script>");
            }
        }
    }
}
