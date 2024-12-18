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

public class UpdateStudent extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String url = "jdbc:mysql://localhost:3307/washit";
        String username = "root";
        String password = "1234";

        String originalContact = request.getParameter("originalContact");
        String newFirstName = request.getParameter("firstName");
        String newLastName = request.getParameter("lastName");
        String newHostel = request.getParameter("hostel");
        String newRoomno = request.getParameter("roomno");
        String newContact = request.getParameter("contact");

        try {
           
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);

            String updateQuery = "UPDATE students SET first_name = ?, last_name = ?, hostel = ?, roomno = ?, contact = ? WHERE contact = ?";
            PreparedStatement stmt = conn.prepareStatement(updateQuery);
            stmt.setString(1, newFirstName);
            stmt.setString(2, newLastName);
            stmt.setString(3, newHostel);
            stmt.setString(4, newRoomno);
            stmt.setString(5, newContact);
            stmt.setString(6, originalContact);

            int rowsUpdated = stmt.executeUpdate();

            if (rowsUpdated > 0) {
                out.println("<script>alert('Record Updated Successfully.'); window.location='Students.jsp';</script>");

            } else {
                out.println("<script>alert('No Matching Record Found To Update.'); window.location='Students.jsp';</script>");
            }

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
