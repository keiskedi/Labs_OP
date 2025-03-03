<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Калькулятор</title>
    <style>
        table { margin: auto; border-collapse: collapse; }
        td, th { border: 1px solid black; padding: 8px; text-align: center; }
    </style>
</head>
<body>
    <img src="images/formulaf.png" alt="Логотип" width="400" style="display: block; margin: auto;">
    <div style="text-align: center;">

        <form method="post" action="calculateLogic.jsp">
            <input type="hidden" name="task" value="task2">
            
            <%
                String prefix = "task2_";
                String aFrom = (String) session.getAttribute(prefix + "aFrom");
                String aTo = (String) session.getAttribute(prefix + "aTo");
                String aStep = (String) session.getAttribute(prefix + "aStep");
                String bFrom = (String) session.getAttribute(prefix + "bFrom");
                String bTo = (String) session.getAttribute(prefix + "bTo");
                String bStep = (String) session.getAttribute(prefix + "bStep");
                String cFrom = (String) session.getAttribute(prefix + "cFrom");
                String cTo = (String) session.getAttribute(prefix + "cTo");
                String cStep = (String) session.getAttribute(prefix + "cStep");
                String dFrom = (String) session.getAttribute(prefix + "dFrom");
                String dTo = (String) session.getAttribute(prefix + "dTo");
                String dStep = (String) session.getAttribute(prefix + "dStep");

                aFrom = (aFrom != null) ? aFrom : "1";
                aTo = (aTo != null) ? aTo : "1";
                aStep = (aStep != null) ? aStep : "1";
                bFrom = (bFrom != null) ? bFrom : "1";
                bTo = (bTo != null) ? bTo : "1";
                bStep = (bStep != null) ? bStep : "1";
                cFrom = (cFrom != null) ? cFrom : "1";
                cTo = (cTo != null) ? cTo : "1";
                cStep = (cStep != null) ? cStep : "1";
                dFrom = (dFrom != null) ? dFrom : "1";
                dTo = (dTo != null) ? dTo : "1";
                dStep = (dStep != null) ? dStep : "1";
            %>

            a: from <input type="text" name="aFrom" value="<%= aFrom %>"> 
            to <input type="text" name="aTo" value="<%= aTo %>"> 
            step <input type="text" name="aStep" value="<%= aStep %>"><br>
            
            b: from <input type="text" name="bFrom" value="<%= bFrom %>"> 
            to <input type="text" name="bTo" value="<%= bTo %>"> 
            step <input type="text" name="bStep" value="<%= bStep %>"><br>
            
            c: from <input type="text" name="cFrom" value="<%= cFrom %>"> 
            to <input type="text" name="cTo" value="<%= cTo %>"> 
            step <input type="text" name="cStep" value="<%= cStep %>"><br>
            
            d: from <input type="text" name="dFrom" value="<%= dFrom %>"> 
            to <input type="text" name="dTo" value="<%= dTo %>"> 
            step <input type="text" name="dStep" value="<%= dStep %>"><br>

            <input type="submit" value="Обчислити">
        </form>

        <jsp:include page="calculateLogic.jsp"/>

        <p><a href="index.html">Повернутися до вибору завдання</a></p>
    </div>
</body>
</html>
