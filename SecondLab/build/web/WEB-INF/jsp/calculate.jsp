<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
    <title>Результат</title>
</head>
<body style="text-align: center;">
    <h1>Результат обчислення</h1>

    <%
        String task = request.getParameter("task");
        String taskLabel = "";
        double y = 0;

        try {
            double a = Double.parseDouble(request.getParameter("a"));
            double b = Double.parseDouble(request.getParameter("b"));
            double c = Double.parseDouble(request.getParameter("c"));
            double d = Double.parseDouble(request.getParameter("d"));

            if ("task1".equals(task)) {
                y = 3 * (Math.log10(Math.abs(b/a)) + Math.sqrt(Math.sin(c) + Math.exp(d)));
                taskLabel = "Завдання 1";
            } else if ("task2".equals(task)) {
                y = 2 * (Math.sin(a) / Math.acos(-2 * b)) - (Math.sqrt(Math.log(c * Math.abs(2 * d))));
                taskLabel = "Завдання 2";
            } else if ("task3".equals(task)) {
                y = (Math.pow(Math.tan(a), 1/c ) / (2 - (Math.sinh(b) / Math.log(Math.abs(d+c)))));
                taskLabel = "Завдання 3";
            } else {
                out.println("<p style='color: red;'>Помилка: Невідоме завдання.</p>");
                return;
            }

            out.println("<p>Обчислення для " + taskLabel + ": " + y + "</p>");

        } catch (NumberFormatException e) {
            out.println("<p style='color: red;'>Помилка: введені дані повинні бути числами.</p>");
        }
    %>

    <p><a href="index.html">Повернутися до вибору завдання</a></p>
</body>
</html>
