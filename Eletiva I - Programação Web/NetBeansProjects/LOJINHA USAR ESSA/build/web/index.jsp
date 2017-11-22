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
            //var nome = prompt("Me chamo Rosana e você?");
        </script>
        <header> 
            <img src ="azul.jpg" width="150" alt="EXPLOSÃO AZUL"> 
            Beautiful Blue
            <img src ="azul.jpg" width="150"  alt="EXPLOSÃO AZUL">
        </header>

        <nav> 
            Início
            Produtos Bluezinho 
            <a href="carrinho.jsp">Carrinho de Compras </a>
            <a href="sobre.jsp">Sobre a Beautiful Blue </a>
            <a href="login.jsp">Login </a> 
            Desenvolvedor
            

        </nav>
        <section>
            <%
                if (session.getAttribute("login") == null){
                // NÃO EXISTE ATRIBUTO DE SESSÃO "LOGIN"
                out.println("<h3>Olá visitante!<br>" + "<a href=login.jsp>Clique aqui</a>" + " para fazer login na loja.</h3>");
                }
                else {
                    String login = (String)session.getAttribute("login");
                    //EXISTE O ATRIBUTO DE SESSÃO "LOGIN"
                   //DAMOS BOAS VINDAS AO USUÁRIO
                   out.println("<h2>Bem vindo(a) de volta, " + login + "!</h2>");
                }
            %>
            <h4> Apresento para vocês, meus fãs, qual é a melhor cor de todo o universo planeta terra e o porquê... </h4>
            <div id="d1"> BLUE*BLUE*BLUE*BLUE*BLUE*BLUE*BLUE*BLUE*BLUE
                <ul>
                    <li>O MAIS LINDO</li>
                    <li>O MELHOR</li>
                    <li>O MAIS BRILHANTE</li>
                </ul>
                <br>  </div>
            <div id="d2"> PORQUE SIM, PORQUE O SITE É MEU, PORQUE EU MANDO NESSA BAGAÇA!
                <ol>
                    <li>AZUL</li>
                    <li>BEM MELHOR</li>
                    <li>QUE ROSA!</li>
                </ol>
                <br>  </div>
        </section>
        <footer>
            © BeautifulBlue - Todos os BlueDireitos Reserblue. - Rosware
        </footer>
    </body>

</html>
