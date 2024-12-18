package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AdminLoginServlet extends HttpServlet {
	
	 private static final String DB_URL = "jdbc:mysql://localhost:3307/washit";
	    private static final String DB_USER = "root";
	    private static final String DB_PASSWORD = "1234";

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

	            String sql = "SELECT * FROM admin WHERE username = ? AND password = ?";
	            PreparedStatement statement = connection.prepareStatement(sql);
	            statement.setString(1, username);
	            statement.setString(2, password);

	            ResultSet resultSet = statement.executeQuery();

	            if (resultSet.next()) {
	                // Login successful
	            	response.sendRedirect("admindash.jsp");
	                response.getWriter().println("Login successful! Welcome Admin");
	            } else {
	                // Login failed
	                response.getWriter().println("Invalid email or password. Please try again.");
	            }

	            resultSet.close();
	            statement.close();
	            connection.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	            response.getWriter().println("An error occurred: " + e.getMessage());
	        }
	    }

}
