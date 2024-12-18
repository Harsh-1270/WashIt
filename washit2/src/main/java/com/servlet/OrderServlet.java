package com.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

public class OrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        int tshirts = parseParameter(request.getParameter("tshirts"));
        int shirts = parseParameter(request.getParameter("shirts"));
        int shorts = parseParameter(request.getParameter("shorts"));
        int pants = parseParameter(request.getParameter("pants"));
        int trousers = parseParameter(request.getParameter("trousers"));
        String status = request.getParameter("status");

        
        
        // Retrieve student ID from session
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("student_id") == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Error: Student ID is missing in session. Please log in first.");
            return;
        }
        int studentId = (Integer) session.getAttribute("student_id");

     
        if (tshirts < 0 || shirts < 0 || shorts < 0 || pants < 0 || trousers < 0) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Error: Quantities must be non-negative.");
            return;
        }

        String jdbcURL = "jdbc:mysql://localhost:3307/washit";
        String dbUser = "root";
        String dbPassword = "1234";

        try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword)) {
            String sql = "INSERT INTO orders (student_id, tshirts, shirts, shorts, pants, trousers, total, status, orderDate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setInt(1, studentId);
                preparedStatement.setInt(2, tshirts);
                preparedStatement.setInt(3, shirts);
                preparedStatement.setInt(4, shorts);
                preparedStatement.setInt(5, pants);
                preparedStatement.setInt(6, trousers);
                preparedStatement.setDouble(7, calculateTotal(tshirts, shirts, shorts, pants, trousers));
                preparedStatement.setString(8, "PENDING");
                preparedStatement.setTimestamp(9, new java.sql.Timestamp(new Date().getTime()));

                preparedStatement.executeUpdate();
            }
            response.sendRedirect("order_history.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error: Unable to add order.");
        }
    }

    private double calculateTotal(int tshirts, int shirts, int shorts, int pants, int trousers) {
        return tshirts + shirts + shorts + pants + trousers;
    }

    private int parseParameter(String param) {
        if (param == null || param.isEmpty()) {
            return 0;
        }
        try {
            return Integer.parseInt(param);
        } catch (NumberFormatException e) {
            return 0;
        }
    }
}
