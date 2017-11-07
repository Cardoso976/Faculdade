<!DOCTYPE html>

<html>
     <head>
        <title>Fatec Shop</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos.css">
    </head>
    
    <body>
     <header>
            <table>
              <tr>
                  <img
                  src="net.jpg"
                  width="200"
                  alt="Imagem de um coala - logotipo da loja">
              </tr>
            </table>
            Fatec Shop
        </header>
        <nav>
          <a href ="inicio.jsp">Inicio</a>
          <a href ="produtos.jsp">Produtos</a>
          <a href ="carrinho.jsp">Carrinho de Compras</a>
          <a href ="sobre.jsp">Sobre nós</a>
          <a href ="login.jsp">Login</a>
        </nav>
            <section>
                <h2>Entre com seu e-mail e senha</h2>
                <form action="validar.jsp" method ="POST">
                    <table>
                        <tr>
                            <td>Email:</td>
                            <td><input type="text"></td>
                        </tr>
                            <tr>
                            <td>Senha:</td>
                            <td><input type="password" name="senha"></td>
                        </tr>
                        <tr>
                        <td colspan="2" align="right">
                            <input type="submit"></td>
                        </tr>
                    </table>
                </form>
            </section>
        <footer>
            (c) Koala_Vid4Lok4_Shop - Todas as brisas reservadas.
        </footer>
    </body>
</html>
