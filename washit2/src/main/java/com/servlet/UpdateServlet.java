package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String DB_URL = "jdbc:mysql://localhost:3307/washit";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "1234";

    public UpdateServlet() {
        super();
    }

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            
            String orderIdStr = request.getParameter("orderId");
            if (orderIdStr == null || orderIdStr.trim().isEmpty()) {
                request.setAttribute("errorMessage", "Order ID is missing or invalid.");
               
                return;
            }
            int orderId = Integer.parseInt(orderIdStr.trim());

            int shirts = parseIntegerParameter(request.getParameter("shirts"), 0);
            int tshirts = parseIntegerParameter(request.getParameter("tshirts"), 0);
            int pants = parseIntegerParameter(request.getParameter("pants"), 0);
            int trousers = parseIntegerParameter(request.getParameter("trousers"), 0);
            int shorts = parseIntegerParameter(request.getParameter("shorts"), 0);
            String status = request.getParameter("status");
            if (status == null || status.trim().isEmpty()) {
                status = "Pending";
            }

            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            String sql = "UPDATE orders SET shirts = ?, tshirts = ?, pants = ?, trousers = ?, shorts = ?, status = ?, orderDate = NOW() WHERE id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, shirts);
            stmt.setInt(2, tshirts);
            stmt.setInt(3, pants);
            stmt.setInt(4, trousers);
            stmt.setInt(5, shorts);
            stmt.setString(6, status);
            stmt.setInt(7, orderId);

            int rowsUpdated = stmt.executeUpdate();
            if (rowsUpdated > 0) {
                response.sendRedirect("order_history.jsp");
            } else {
                request.setAttribute("errorMessage", "Order update failed for Order ID: " + orderId);
               
            }

        } catch (IllegalArgumentException | SQLException e) {
            e.printStackTrace();

            request.setAttribute("errorMessage", "Error occurred: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        } finally {
            
            try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }

    private int parseIntegerParameter(String param, int defaultValue) {
        if (param == null || param.trim().isEmpty()) {
            return defaultValue;
        }
        try {
            return Integer.parseInt(param.trim());
        } catch (NumberFormatException e) {
            return defaultValue;  
        }
    }
}
