<%-- 
    Document   : index
    Created on : 02/08/2017, 21:26:51
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
                int i = 1;
                int tabuada = 8;                
            %>
            <h1> Tabuada Do <% out.print(tabuada); %> </h1> 
                    <br>
                        <%
                            do{
                            out.print(i + " x "+ tabuada +" = " + i*tabuada);
                        %>
                    </br>      
            <%  
                i++;
                }while(i<=9);                
            %>          
    </body>    
</html>
