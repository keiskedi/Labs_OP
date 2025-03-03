package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalculateServlet")
public class CalculateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String task = request.getParameter("task");

        if (null == task) {
            response.getWriter().write("Невірний вибір завдання.");
        } else switch (task) {
            case "task1" -> response.sendRedirect("calculate1.jsp");
            case "task2" -> response.sendRedirect("calculate2.jsp");
            case "task3" -> response.sendRedirect("calculate3.jsp");
            default -> response.getWriter().write("Невірний вибір завдання.");
        }
    }
}


