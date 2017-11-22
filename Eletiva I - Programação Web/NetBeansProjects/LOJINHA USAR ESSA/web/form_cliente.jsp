<%-- 
    Document   : form_cliente
    Created on : 07/11/2017, 22:03:44
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BlueShop - Cadastre-se</title>
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
            <h2> Faça seu cadastro abaixo, todos os campos são obrigatórios! </h2>
   <form method="POST" action="incluir_cliente.jsp">        
            <table border="1">
                <tr>
                  <td>Nome:</td> 
                  <td><input type="text" name="nome" size="50" required></td>
                </tr>
                <tr>
                    <td>Endereço:</td> <td><input type="text" name="endereco" size="50" maxlength="30" required></td>
                </tr>  
                <tr>
                    <td>Cidade:</td> <td><input type="text" name="cidade" size="30" maxlength="30" required></td>
                </tr>
              
                <tr>
                    <td>Estado:</td> <td><select name="estado">
                           <option> MG </option>
                           <option> RJ </option>                           
                           <option selected>SP</option>
                       </select>
                </tr>
                <tr>
                  <td>E-Mail:</td> <td><input type="email" name="email" required></td>
                </tr>    
                <tr>
                  <td>Senha:</td> <td><input type="password" name="senha" size="15" maxlength="15"required></td>
                </tr> 
                <tr>
                  <td colspan="2" align="rigth"> <input type="submit"></td>
                </tr>        
            </table>
        </form>
        </section>
        <footer>
            BeautifulBlue - Todos os BlueDireitos Reserblue. - Rosware
        </footer>/
    </body>
</html>
