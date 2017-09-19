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
            String aForm = request.getParameter("a");
            String bForm = request.getParameter("b");
            String cForm = request.getParameter("c");

            int a = Integer.parseInt(aForm);
            int b = Integer.parseInt(bForm);
            int c = Integer.parseInt(cForm);

            out.println("Equação: "+a+"x²+"+b+"x+"+c+"=0"); 

            double delta = (b*b)-((4*a)*c);
            
            double x = -b-(Math.sqrt(delta));
            x = x/2*a;           

          %>
        </h1>
    </body>
</html>
