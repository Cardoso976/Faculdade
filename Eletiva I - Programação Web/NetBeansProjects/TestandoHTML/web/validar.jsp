<%--
    Document   : validar
    Created on : 22/08/2017, 22:18:08
    Author     : Vinicius
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
          String email = request.getParameter("email");
          String senha = request.getParameter("senha");
          
          if(email.equals("mauricio@gmail.com") && senha.equals("1234")){
              session.setAttribute("login", "Mauricio");
              request.getRequestDispatcher("index.jsp").forward( request, response);
          }
          else{
              %>
              <h2 style="color: red">
                  LOGIN INVÁLIDO
              </h2>
              
              <a href="index.jsp"> Voltar ao Inicio </a>
              
              <%   
          }
          %>
        </h1>
    </body>
</html>
