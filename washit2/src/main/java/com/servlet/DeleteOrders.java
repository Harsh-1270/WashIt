package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteOrders extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
        String url = "jdbc:mysql://localhost:3307/washit";
        String username = "root";
        String password = "1234";
        
        String firstName = request.getParameter("first_name");

        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

          
            conn = DriverManager.getConnection(url, username, password);
            conn.setAutoCommit(false);  

            
            String getStudentIdQuery = "SELECT student_id FROM students WHERE first_name = ?";
            PreparedStatement getStudentIdStmt = conn.prepareStatement(getStudentIdQuery);
            getStudentIdStmt.setString(1, firstName);
            ResultSet rs = getStudentIdStmt.executeQuery();

            if (rs.next()) {
                int studentId = rs.getInt("student_id"); 

               
                String deleteOrdersQuery = "DELETE FROM orders WHERE student_id = ?";
                PreparedStatement ordersStmt = conn.prepareStatement(deleteOrdersQuery);
                ordersStmt.setInt(1, studentId);
                int ordersDeleted = ordersStmt.executeUpdate();

              
                String deleteStudentsQuery = "DELETE FROM students WHERE first_name = ?";
                PreparedStatement studentsStmt = conn.prepareStatement(deleteStudentsQuery);
                studentsStmt.setString(1, firstName);
                int studentsDeleted = studentsStmt.executeUpdate();

    
                if (ordersDeleted > 0 && studentsDeleted > 0) {
                    conn.commit();  
                    response.getWriter().println("<script>alert('Record Deleted Successfully.'); window.location='Allorders.jsp';</script>");
                } else {
                    conn.rollback();  
                    response.getWriter().println("<script>alert('No matching record found to delete.'); window.location='Allorders.jsp';</script>");
                }

                
                ordersStmt.close();
                studentsStmt.close();
            } else {
                response.getWriter().println("<script>alert('No matching student found.'); window.location='Allorders.jsp';</script>");
            }

           
            rs.close();
            getStudentIdStmt.close();
        } catch (Exception e) {
            try {
                if (conn != null) {
                    conn.rollback(); 
                }
            } catch (Exception sqlEx) {
                sqlEx.printStackTrace();
            }
            e.printStackTrace();
            response.getWriter().println("An error occurred while deleting the record.");
        } finally {
            try {
                if (conn != null) {
                    conn.setAutoCommit(true);  
                    conn.close();  
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
