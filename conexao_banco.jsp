<%
	InitialContext contexto = new InitialContext();
	DataSource ds = (DataSource)contexto.lookup("jdbc/loja");/*Glassfish procura as conf do xml para conectar no banco*/
	Connection conexao = ds.getConnection();/*Conexão obtida*/

	String sql = "select * from clientes where email = ? and senha = ?";

	PreparedStatement comando = conexao.prepareStatement(sql);

	comando.setString(1, email);
	comando.setString(2, senha);

	ResultSet res = comando.executeQuery();

		
%>