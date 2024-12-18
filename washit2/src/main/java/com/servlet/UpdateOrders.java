package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateOrders extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String url = "jdbc:mysql://localhost:3307/washit";
        String username = "root";
        String password = "1234";

        String id = request.getParameter("id");
        String originalName = request.getParameter("originalName");
        String newFirstName = request.getParameter("firstName");
        String newHostel = request.getParameter("hostel");
        String newRoomno = request.getParameter("roomno");
        String newShirts = request.getParameter("Shirts");
        String newTShirts = request.getParameter("TShirts");
        String newPants = request.getParameter("Pants");
        String newTrousers = request.getParameter("Trousers");
        String newShorts = request.getParameter("Shorts");
        String newTotal = request.getParameter("Total");
        String newStatus = request.getParameter("Status");
        
        try {

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, username, password);
        conn.setAutoCommit(false);
        
        try {

            // Update query for orders table
            String updateOrdersQuery = "UPDATE orders SET shirts = ?, tshirts = ?, pants = ?, trousers = ?, shorts = ?, total = ?, status = ? WHERE  = ?";
            PreparedStatement ordersStmt = conn.prepareStatement(updateOrdersQuery);
            ordersStmt.setString(1, newShirts);
            ordersStmt.setString(2, newTShirts);
            ordersStmt.setString(3, newPants);
            ordersStmt.setString(4, newTrousers);
            ordersStmt.setString(5, newShorts);
            ordersStmt.setString(6, newTotal);
            ordersStmt.setString(7, newStatus);
            ordersStmt.setString(8, originalName);
            int ordersUpdated = ordersStmt.executeUpdate();

            // Update query for students table
            String updateStudentsQuery = "UPDATE students SET first_name = ?, hostel = ?, roomno = ? WHERE first_name = ?";
            PreparedStatement studentsStmt = conn.prepareStatement(updateStudentsQuery);
            studentsStmt.setString(1, newFirstName);
            studentsStmt.setString(2, newHostel);
            studentsStmt.setString(3, newRoomno);
            studentsStmt.setString(4, originalName);
            int studentsUpdated = studentsStmt.executeUpdate();

            if (ordersUpdated > 0 && studentsUpdated > 0) {
                conn.commit(); 
                out.println("<script>alert('Record Updated Successfully.'); window.location='Allorders.jsp';</script>");
            } else {
                conn.rollback(); 
                out.println("<script>alert('No Matching Record Found To Update.'); window.location='Allorders.jsp';</script>");
            }


            ordersStmt.close();
            studentsStmt.close();
            conn.close();
        } catch (Exception e) {
            try {
                if (conn != null) {
                    conn.rollback();  
                }
            } catch (SQLException sqlEx) {
                sqlEx.printStackTrace();
            }
            e.printStackTrace();
            out.println("An error occurred while updating the record.");
        } finally {
            out.close();
        }

    }catch(Exception e) {
    	e.printStackTrace();
    }
}
}
