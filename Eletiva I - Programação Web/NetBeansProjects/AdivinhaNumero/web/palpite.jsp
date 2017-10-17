<%-- 
    Document   : palpite
    Created on : 11/10/2017, 21:17:05
    Author     : rodrigo
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
            String palpiteForm = request.getParameter("palpite");
            int palpite = Integer.parseInt(palpiteForm);
            int sorteado = (Integer) session.getAttribute("sorteado");
            int tentativas = (Integer) session.getAttribute("tentativas");
            tentativas++;
            session.setAttribute("tentativas", tentativas);

            if (palpite == sorteado) {
                out.println("<h3>PARABÉNS! Você acertou o número" + sorteado + "após" + tentativas + "tentativas" + "</h3>");
                out.println("<a href=reiniciar.jsp>Jogar de Novo</a>");
            }
            if (palpite < sorteado) {
                out.println("<h3>Incorreto... O número que eu pensei é maior que este...</h3>");
                out.println("<a href=index.jsp>Tentar Novamente</a>");
            } else {
                out.println("<h3>Incorreto... O número que eu pensei é menor que este...</h3>");
                out.println("<a href=index.jsp>Tentar Novamente</a>");
            }
        %>
    </body>    
</html>
