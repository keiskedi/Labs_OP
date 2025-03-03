<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<title>Таблиця</title>
<%
    String task = request.getParameter("task");
    if (task == null) return;

    String prefix = task + "_";

    session.setAttribute(prefix + "aFrom", request.getParameter("aFrom"));
    session.setAttribute(prefix + "aTo", request.getParameter("aTo"));
    session.setAttribute(prefix + "aStep", request.getParameter("aStep"));
    session.setAttribute(prefix + "bFrom", request.getParameter("bFrom"));
    session.setAttribute(prefix + "bTo", request.getParameter("bTo"));
    session.setAttribute(prefix + "bStep", request.getParameter("bStep"));
    session.setAttribute(prefix + "cFrom", request.getParameter("cFrom"));
    session.setAttribute(prefix + "cTo", request.getParameter("cTo"));
    session.setAttribute(prefix + "cStep", request.getParameter("cStep"));
    session.setAttribute(prefix + "dFrom", request.getParameter("dFrom"));
    session.setAttribute(prefix + "dTo", request.getParameter("dTo"));
    session.setAttribute(prefix + "dStep", request.getParameter("dStep"));

    try {
        double aFrom = Double.parseDouble(request.getParameter("aFrom"));
        double aTo = Double.parseDouble(request.getParameter("aTo"));
        double aStep = Double.parseDouble(request.getParameter("aStep"));
        double bFrom = Double.parseDouble(request.getParameter("bFrom"));
        double bTo = Double.parseDouble(request.getParameter("bTo"));
        double bStep = Double.parseDouble(request.getParameter("bStep"));
        double cFrom = Double.parseDouble(request.getParameter("cFrom"));
        double cTo = Double.parseDouble(request.getParameter("cTo"));
        double cStep = Double.parseDouble(request.getParameter("cStep"));
        double dFrom = Double.parseDouble(request.getParameter("dFrom"));
        double dTo = Double.parseDouble(request.getParameter("dTo"));
        double dStep = Double.parseDouble(request.getParameter("dStep"));

        out.println("<table border='1'><tr><th>a</th><th>b</th><th>c</th><th>d</th><th>y</th></tr>");

        for (double a = aFrom; a <= aTo; a += aStep) {
            for (double b = bFrom; b <= bTo; b += bStep) {
                for (double c = cFrom; c <= cTo; c += cStep) {
                    for (double d = dFrom; d <= dTo; d += dStep) {
                        double y = 0;

                        switch (task) {
                            case "task1":
                                y = 3 * (Math.log10(Math.abs(b / a)) + Math.sqrt(Math.sin(c) + Math.exp(d)));
                                break;
                            case "task2":
                                y = 2 * (Math.sin(a) / Math.acos(-2 * b)) - (Math.sqrt(Math.log(c * Math.abs(2 * d))));
                                break;
                            case "task3":
                                y = (Math.pow(Math.tan(a), 1 / c) / (2 - (Math.sinh(b) / Math.log(Math.abs(d + c)))));
                                break;
                            default:
                                throw new IllegalArgumentException("Невідоме завдання!");
                        }

                        out.println("<tr><td>" + a + "</td><td>" + b + "</td><td>" + c + "</td><td>" + d + "</td><td>" + y + "</td></tr>");
                    }
                }
            }
        }
        out.println("</table>");
    } catch (Exception e) {
        out.println("<p style='color:red;'>Невірне введення. Будь ласка, введіть число</p>");
    }
%>
<p><a href="index.html">Повернутися до вибору завдання</a></p>