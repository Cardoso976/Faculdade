<%--
    Document   : pedido
    Created on : 19/09/2017, 22:34:22
    Author     : rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>Mini Pedido</title>
    </head>
    <body>
        <%
            String pen = request.getParameter("pendrive");
            String mous = request.getParameter("mouse");
            String cart = request.getParameter("cartucho");
            String fret = request.getParameter("frete");
            String embru = request.getParameter("embrulho");

            double pendrive = Double.parseDouble(pen);
            double mouse = Double.parseDouble(mous);
            double cartucho = Double.parseDouble(cart);
            double valFrete = Double.parseDouble(fret);

            int qTotal = (int) pendrive + (int) mouse + (int) cartucho;

            String tipoFrete = null;

            if (valFrete == 0.075) {
                tipoFrete = "PAC";
            }
            if (valFrete == 0.125) {
                tipoFrete = "SEDEX";
            }
            if (valFrete == 0.150) {
                tipoFrete = "SEDEX10";
            }

            int embrulho = 0;
            String Embrulho = null;
            if (embru != null) {
                embrulho = 5;
                Embrulho = "SIM";
            } else {
                embrulho = 0;
                Embrulho = "NÃO";
            }

            pendrive = 19.90 * pendrive;
            mouse = 24.90 * mouse;
            cartucho = 80.00 * cartucho;

            double totalParc = pendrive + mouse + cartucho;
            double total = totalParc + (totalParc * valFrete) + embrulho;
        %>
        <h1>Calculando o Total</h1>
        <table>
            <tr>
                <td>Produto</td>
                <td>Preço</td>
                <td>QTD</td>
                <td>Total Produto</td>
            </tr>
            <tr>
                <td>Pen Drive</td>
                <td>R$&nbsp;19,90</td>
                <td><%out.println(pen);%></td>
                <c:set var="pendrive" value="<%=pendrive%>"/>
                <td>R$&nbsp;<fmt:formatNumber pattern="00.00" value="${pendrive}" /></td>
            </tr>
            <tr>
                <td>Mouse</td>
                <td>R$&nbsp;24,90</td>
                <td><%out.println(mous);%></td>
                <c:set var="mouse" value="<%=mouse%>"/>
                <td>R$&nbsp;<fmt:formatNumber pattern="00.00" value="${mouse}" /></td>
            </tr>
            <tr>
                <td>Cartucho</td>
                <td>R$&nbsp;80,00</td>
                <td><%out.println(cart);%></td>
                <c:set var="cartucho" value="<%=cartucho%>"/>
                <td>R$&nbsp;<fmt:formatNumber pattern="00.00" value="${cartucho}" /></td>
            </tr>
            <tr>
                <td>Total Produtos</td>
                <td></td>
                <td><%out.println(qTotal);%></td>
                <c:set var="totalParc" value="<%=totalParc%>"/>
                <td>R$&nbsp;<fmt:formatNumber pattern="00.00" value="${totalParc}" /></td>
            </tr>
            <tr>
                <td>Frete</td>
                <td><%out.println(tipoFrete);%></td>
                <c:set var="frete" value="<%=valFrete%>"/>
                <td><fmt:formatNumber value="${frete}" type="percent" maxFractionDigits="2"/></td>
                <c:set var="totalFrete" value="<%=totalParc * valFrete%>"/>
                <td>R$&nbsp;<fmt:formatNumber pattern="00.00" value="${totalFrete}" /></td>
            </tr>
            <tr>
                <td>Embrulho</td>
                <td></td>
                <td><%out.println(Embrulho);%></td>
                <c:set var="embrulho" value="<%=embrulho%>"/>
                <td>R$&nbsp;<fmt:formatNumber pattern="00.00" value="${embrulho}" /></td>
            </tr>
            <tr>
                <td>Total Geral</td>
                <td></td>
                <td></td>
                <c:set var="totalGeral" value="<%=total%>"/>
                <td>R$&nbsp;<fmt:formatNumber pattern="00.00" value="${totalGeral}" /></td>
            </tr>
        </table>
    </body>
</html>
