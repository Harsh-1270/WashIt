package com.servlet;

import com.entities.Order;
import com.entities.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class DeleteOrderServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");

        if (idParam != null) {
            try {
                int orderId = Integer.parseInt(idParam);
                DatabaseUtil.deleteOrder(orderId); 
                response.sendRedirect("order_history.jsp"); 
            } catch (NumberFormatException e) {
                e.printStackTrace();
                response.sendRedirect("order_history.jsp?error=Invalid+Order+ID"); 
            } catch (Exception e) {
				
				e.printStackTrace();
			}
        } else {
            response.sendRedirect("order_history.jsp?error=Order+ID+not+provided");
        }
    }
}
