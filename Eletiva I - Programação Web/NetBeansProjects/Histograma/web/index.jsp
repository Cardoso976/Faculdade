<%--
    Document   : index
    Created on : 30/08/2017, 08:59:47
    Author     : Rodrigo Cardoso
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  Random sorteio = new Random();
  int vet [] = new int [10];
  int num = 0;

  for (int i = 0;i < 100 ; i++) {
      num = sorteio.nextInt(10)+1;
      vet[num-1]++;      
  }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Histograma</title>
    </head>
    <body>
        <h1>Histograma</h1>
        <div class = "resultado">
          <%
            int k = 1;
            for(int i : vet){
              out.print(k+ ": ");
              for (int j = 0; j < i; j++) {
                      out.print("#");
                  }
                  out.print("<br>");
              k++;
            }
          %>
        </div>
    </body>
</html>
