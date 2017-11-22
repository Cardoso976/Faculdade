<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"  href="estilos.css">
    </head>
    <body>
        <header> 
            <img src ="azul.jpg" width="150" alt="EXPLOSÃO AZUL"> 
            Beautiful Blue
            <img src ="azul.jpg" width="150"  alt="EXPLOSÃO AZUL">
        </header>

        <nav> 
            Início-
            Carrinho de Compras-
            <a href="sobre.jsp">Sobre a Beautiful Blue</a>
            -
            Desenvolvedor

        </nav>
        <section>
            <h4> Faça seu login abaixo¸ </h4>
            <form action="validar.jsp" method= "POST" > 
                <table border = "1" align ="center" >
                    <tr>
                        <td>E-mail</td>  
                        <td><input type="text" name="email"></td>

                    </tr>
                    <tr>
                        <td> Senha</td>  
                        <td><input type="password" name="senha"></td>                    
                    </tr>    
                    <tr>
                        <td colspan="2" align="center"> 
                            <input type="submit" >
                        </td>                    
                    </tr>  
                </table>
                <br>
            </form>
            <h3> Ainda não tem o seu cadastro? 
                <a href="form_cliente.jsp"> CLIQUE AQUI</a> para realiza-lo! </h3>
        </section>
        <footer>
            © BeautifulBlue - Todos os BlueDireitos Reserblue. - Rosware
        </footer>/
    </body>
</html>
