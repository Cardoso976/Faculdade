<%-- 
    Document   : sacar
    Created on : 10/10/2017, 22:21:21
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
            if(saldo < valor){
             %>
             <h1 style="color: red">Saldo insuficiente.</h1>
            <%} else {
                    saldo = saldo - valor;
                    session.setAttribute("saldo",saldo);
                    out.println("<h1>Saque realizado!</h1>");
            }
        %>
        <a href="index.jsp">Voltar ao início</a>
    </body>
</html>
