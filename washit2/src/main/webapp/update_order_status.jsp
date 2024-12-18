<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
    // Database connection variables
    String dbURL = "jdbc:mysql://localhost:3307/washit"; 
    String dbUser = "root"; 
    String dbPass = "1234"; 

    int orderId = Integer.parseInt(request.getParameter("orderId"));
    String newStatus = request.getParameter("status");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        
        String sqlUpdate = "UPDATE orders SET status = ? WHERE id = ?";
        PreparedStatement stmt = conn.prepareStatement(sqlUpdate);
        stmt.setString(1, newStatus); 
        stmt.setInt(2, orderId); 

        int rowsUpdated = stmt.executeUpdate();
        if (rowsUpdated > 0) {
            out.println("Order status updated successfully!");
        } else {
            out.println("Failed to update order status.");
        }

        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    response.sendRedirect("your_orders_page.jsp"); 
%>

</body>
</html>