<%-- 
    Document   : validar
    Created on : 21/08/2017, 16:17:38
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
        <h1>
            <%
                String email= request.getParameter("email");
                String senha= request.getParameter("senha");
                out.println("Seu e-mail é"+email+" e sua senha é "+senha);
                %>
        </h1>
    </body>
</html>
