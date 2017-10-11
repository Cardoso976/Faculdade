<%-- 
    Document   : index
    Created on : 10/10/2017, 21:53:20
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
            double saldo = 0;
            
              if(session.isNew()){
                  session.setAttribute("saldo", saldo);
              }else{
                  saldo = (Double)session.getAttribute("saldo");
              }
        %>
        <h1>Saldo: R$<%= String.format("%.2f", saldo)%></h1>
        <ul>
            <li>
                <a href="form_deposito.html">Depositar</a>
            </li>
            <li>
                <a href="form_saque.html">Sacar</a>
            </li>
        </ul>
        
    </body>
</html>
