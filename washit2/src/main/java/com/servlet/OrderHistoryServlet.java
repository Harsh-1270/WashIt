package com.servlet;

import com.entities.Order;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OrderHistoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Order> orders = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            String jdbcURL = "jdbc:mysql://localhost:3307/washit"; 
            String dbUser = "root"; 
            String dbPassword = "1234";
            
            
            connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            System.out.println("Database connection established.");

           
            String sql = "SELECT o.id, s.first_name, s.hostel, s.room_no, o.total, o.order_date " +
                         "FROM orders o " +
                         "JOIN students s ON o.student_id = s.id";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();

            
            while (resultSet.next()) {
                Order order = new Order(
                    resultSet.getInt("id"),
                    resultSet.getString("first_name"),
                    resultSet.getString("hostel"),
                    resultSet.getString("room_no"),
                    resultSet.getInt("total"), 
                    resultSet.getTimestamp("order_date"), 
                    resultSet.getString("status") 
                );

                /*
                Order order = new Order();
                order.setId(resultSet.getInt("id"));
                order.setFirstName(resultSet.getString("first_name"));
                order.setHostel(resultSet.getString("hostel"));
                order.setRoomNo(resultSet.getString("room_no"));
                order.setTotalClothes(resultSet.getInt("total"));
                order.setOrderDate(resultSet.getTimestamp("order_date"));
                order.setStatus(resultSet.getString("status"));
                */

                orders.add(order);
            }


            System.out.println("Orders Size: " + orders.size());

            request.setAttribute("orders", orders);

            request.getRequestDispatcher("order_history.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching order history: " + e.getMessage());
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
