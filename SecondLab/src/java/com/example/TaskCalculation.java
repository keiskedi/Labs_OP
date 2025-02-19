package com.example;

import java.io.IOException;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "TaskCalculation", urlPatterns = {"/TaskCalculation"})
public class TaskCalculation extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String task = request.getParameter("task");
        String a = request.getParameter("a");
        String b = request.getParameter("b");
        String c = request.getParameter("c");
        String d = request.getParameter("d");

        saveCookie(response, task + "_a", a);
        saveCookie(response, task + "_b", b);
        saveCookie(response, task + "_c", c);
        saveCookie(response, task + "_d", d);

        request.getRequestDispatcher("/WEB-INF/jsp/calculate.jsp").forward(request, response);
    }

    private void saveCookie(HttpServletResponse response, String name, String value) throws IOException {
        if (value != null && !value.isEmpty()) {
            Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
            cookie.setMaxAge(2 * 24 * 60 * 60); 
            response.addCookie(cookie);
        }
    }
}
