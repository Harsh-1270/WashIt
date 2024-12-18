package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateLaundryPerson extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String url = "jdbc:mysql://localhost:3307/washit";
        String username = "root";
        String password = "1234";

        // Retrieve form data
        String originalContact = request.getParameter("originalContact");
        String newFirstName = request.getParameter("firstName");
        String newLastName = request.getParameter("lastName");
        String newContact = request.getParameter("contact");

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);

            // SQL query to update the data
            String updateQuery = "UPDATE laundry_person SET first_name = ?, last_name = ?, contact = ? WHERE contact = ?";
            PreparedStatement stmt = conn.prepareStatement(updateQuery);
            stmt.setString(1, newFirstName);
            stmt.setString(2, newLastName);
            stmt.setString(3, newContact);
            stmt.setString(4, originalContact);

            int rowsUpdated = stmt.executeUpdate();

            if (rowsUpdated > 0) {
                out.println("<script>alert('Record Updated Successfully.'); window.location='admindash.jsp';</script>");

            } else {
                out.println("<script>alert('No Matching Record Found To Update.'); window.location='admindash.jsp';</script>");
            }

            // Close resources
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("An error occurred while updating the record.");
        } finally {
            out.close();
        }
    }
}
