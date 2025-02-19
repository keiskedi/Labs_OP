<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="javax.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
<head>
    <title>Завдання 1</title>
</head>
<body style="text-align: center;">
    <h1>Введіть дані для Завдання 1</h1>

    <%
        String task = "task1";
        String a = "", b = "", c = "", d = "";
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ((task + "_a").equals(cookie.getName())) a = URLDecoder.decode(cookie.getValue(), "UTF-8");
                if ((task + "_b").equals(cookie.getName())) b = URLDecoder.decode(cookie.getValue(), "UTF-8");
                if ((task + "_c").equals(cookie.getName())) c = URLDecoder.decode(cookie.getValue(), "UTF-8");
                if ((task + "_d").equals(cookie.getName())) d = URLDecoder.decode(cookie.getValue(), "UTF-8");
            }
        }
    %>
    <img src="images/formulaf.png" alt="Логотип" width="400" style="display: block; margin: auto;">
    <form action="TaskCalculation" method="post">
        <input type="hidden" name="task" value="task1">
        
        <label>a:</label>
        <input type="text" name="a" value="<%= a %>" required><br><br>
        
        <label>b:</label>
        <input type="text" name="b" value="<%= b %>" required><br><br>

        <label>c:</label>
        <input type="text" name="c" value="<%= c %>" required><br><br>

        <label>d:</label>
        <input type="text" name="d" value="<%= d %>" required><br><br>
        
        <button type="submit">Обчислити</button>
    </form>
</body>
</html>
