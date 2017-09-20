<%-- 
    Document   : pedido
    Created on : 19/09/2017, 22:34:22
    Author     : rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mini Pedido</title>
    </head>
    <body>
        <%
            String pen = request.getParameter("pendrive");
            String mous = request.getParameter("mouse");
            String cart = request.getParameter("cartucho");
            String fret = request.getParameter("frete");

            double pendrive = Double.parseDouble(pen);
            double mouse = Double.parseDouble(mous);
            double cartucho = Double.parseDouble(cart);
            double valFrete = Double.parseDouble(fret);

            pendrive = 19.90 * pendrive;
            mouse = 24.90 * mouse;
            cartucho = 80.00 * cartucho;

            double totalParc = pendrive + mouse + cartucho;

            double total = totalParc + (totalParc * valFrete);

            out.print(pendrive + "<br>");
            out.print(mouse + "<br>");
            out.print(cartucho + "<br>");
            out.print(valFrete + "<br>");
            out.print(totalParc + "<br>");
            out.print(total + "<br>");
        %>
        <h1>Calculando o Total</h1>
    </body>
</html>
