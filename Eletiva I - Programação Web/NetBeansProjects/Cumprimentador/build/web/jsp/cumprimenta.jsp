
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
            String nomeForm = request.getParameter("nome");
            String idadeForm = request.getParameter("idade");

            int diasTotal = Integer.parseInt(idadeForm)*365;
            
            out.println("Olá" +nomeForm+ "!!");
            out.println("Você já viveu ≃ "+diasTotal);
          %>
        </h1>
    </body>
</html>
