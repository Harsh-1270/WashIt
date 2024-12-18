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

public class UpdateStatusServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3307/washit";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "1234"; 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

 
        String orderId = request.getParameter("orderId");
        String newStatus = request.getParameter("status");

        if (orderId == null || newStatus == null) {
            out.println("<script>alert('Order ID or status is missing.'); window.location='manage_order.jsp';</script>");
            return;
        }

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement("UPDATE orders SET status = ? WHERE id = ?")) {

            preparedStatement.setString(1, newStatus);
            preparedStatement.setString(2, orderId);

            int rowsUpdated = preparedStatement.executeUpdate();
            if (rowsUpdated > 0) {
                out.println("<script>alert('Order status updated successfully.'); window.location='manage_order.jsp';</script>");
            } else {
                out.println("<script>alert('Order not found or update failed.'); window.location='manage_order.jsp';</script>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('An error occurred: " + e.getMessage() + "'); window.location='yourOrdersPage.jsp';</script>");
        }
    }
}
