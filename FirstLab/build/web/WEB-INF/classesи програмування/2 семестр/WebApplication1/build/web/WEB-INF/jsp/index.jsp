<%-- 
    Document   : index
    Created on : 13 лют. 2025 р., 13:38:37
    Author     : kapir
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Привітання</title>
</head>
<body>
    <h1 style="text-align: center;">
        <% 
         String userName = (String) request.getAttribute("userName");
            if (userName != null) {
                out.println("Привіт, " + userName + "!");
            } else {
                out.println("Будь ласка, введіть своє ім'я на головній сторінці");
            }
        %>
    </h1>
    <p style="text-align: center;"><a href="index.html">Назад на головну</a></p>
</body>
</html>