package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class StudentRegisterServlet extends HttpServlet {
	private static final String DB_URL = "jdbc:mysql://localhost:3307/washit";
	private static final String DB_USER = "root";
	private static final String DB_PASSWORD = "1234";

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String hostel = request.getParameter("hostel");
		String roomNo = request.getParameter("roomno");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
			
			String sql = "INSERT INTO students(first_name,last_name,hostel,roomno,contact,email,password) VALUES(?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, firstName);
			statement.setString(2, lastName);
			statement.setString(3, hostel);
			statement.setString(4, roomNo);
			statement.setString(5, contact);
			statement.setString(6, email);
			statement.setString(7, password);
			
			int rowInserted = statement.executeUpdate();
			if(rowInserted > 0) {
				response.sendRedirect("studentlogin.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			response.getWriter().println("an error has occured : " + e.getMessage());
		}
	}

}
