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



public class DeleteLaundryPerson extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
        String url = "jdbc:mysql://localhost:3307/washit";
        String username = "root";
        String password = "1234";
        
     
        String contact = request.getParameter("contact");

        try {
           
            Class.forName("com.mysql.cj.jdbc.Driver");
            
         
            Connection conn = DriverManager.getConnection(url, username, password);
            
        
            String deleteQuery = "DELETE FROM laundry_person WHERE contact = ?";
            PreparedStatement stmt = conn.prepareStatement(deleteQuery);
            stmt.setString(1, contact);

            // Execute the query
            int rowsDeleted = stmt.executeUpdate();

            if (rowsDeleted > 0) {
                response.getWriter().println("<script>alert('Record Deleted Successfully.'); window.location='admindash.jsp';</script>");
            } else {
                response.getWriter().println("<script>alert('Record Deleted Successfully.'); window.location='admindash.jsp';</script>");            }

            // Close resources
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred while deleting the record.");
        }
    }
}
