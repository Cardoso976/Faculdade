<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <title>Blue is Life</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"  href="estilos.css">

    </head>
    <body>
        <script>
            //alert("Seja bem vindo ao mundo azul!");
            //var nome = prompt("Me chamo Rosana e voc�?");
        </script>
        <header> 
            <img src ="azul.jpg" width="150" alt="EXPLOS�O AZUL"> 
            Beautiful Blue
            <img src ="azul.jpg" width="150"  alt="EXPLOS�O AZUL">
        </header>

        <nav> 
            In�cio
            Produtos Bluezinho 
            <a href="carrinho.jsp">Carrinho de Compras </a>
            <a href="sobre.jsp">Sobre a Beautiful Blue </a>
            <a href="login.jsp">Login </a> 
            Desenvolvedor
            

        </nav>
        <section>
            <%
                if (session.getAttribute("login") == null){
                // N�O EXISTE ATRIBUTO DE SESS�O "LOGIN"
                out.println("<h3>Ol� visitante!<br>" + "<a href=login.jsp>Clique aqui</a>" + " para fazer login na loja.</h3>");
                }
                else {
                    String login = (String)session.getAttribute("login");
                    //EXISTE O ATRIBUTO DE SESS�O "LOGIN"
                   //DAMOS BOAS VINDAS AO USU�RIO
                   out.println("<h2>Bem vindo(a) de volta, " + login + "!</h2>");
                }
            %>
            <h4> Apresento para voc�s, meus f�s, qual � a melhor cor de todo o universo planeta terra e o porqu�... </h4>
            <div id="d1"> BLUE*BLUE*BLUE*BLUE*BLUE*BLUE*BLUE*BLUE*BLUE
                <ul>
                    <li>O MAIS LINDO</li>
                    <li>O MELHOR</li>
                    <li>O MAIS BRILHANTE</li>
                </ul>
                <br>  </div>
            <div id="d2"> PORQUE SIM, PORQUE O SITE � MEU, PORQUE EU MANDO NESSA BAGA�A!
                <ol>
                    <li>AZUL</li>
                    <li>BEM MELHOR</li>
                    <li>QUE ROSA!</li>
                </ol>
                <br>  </div>
        </section>
        <footer>
            � BeautifulBlue - Todos os BlueDireitos Reserblue. - Rosware
        </footer>
    </body>

</html>
