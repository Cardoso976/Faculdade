<%-- 
    Document   : index
    Created on : 11/10/2017, 21:16:50
    Author     : rodrigo
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Adivinhe o Número</h1>        
        <%
            if (session.isNew()) {
                Random gerar = new Random();
                int sorteado = gerar.nextInt(50) + 1;
                session.setAttribute("sorteado", sorteado);
                session.setAttribute("tentativas", 0);
            }
        %>
        <h3>Pesei em um numero entre 1 e 50....
            Tente adivinhar qual é!</h3>
        <form method="POST" action="palpite.jsp">
            Informe o seu palpite:
            <input type="number" name="palpite" min="1" max="50" required>
            <input type="submit">              
        </form>
    </body>
</html>
