<%-- 
    Document   : depositar
    Created on : 10/10/2017, 22:07:34
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String valorForm = request.getParameter("valor");
            double valor = Double.parseDouble(valorForm);
            double saldo = (Double)session.getAttribute("saldo");
            saldo = saldo + valor;
            session.setAttribute("saldo", saldo);
        %>
        <h1>Depósito realizado!</h1>
        <a href="index.jsp">Voltar ao início</a>
    </body>
</html>
