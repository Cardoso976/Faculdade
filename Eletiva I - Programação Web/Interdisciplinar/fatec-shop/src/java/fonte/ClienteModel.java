package fonte;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ClienteModel {
    int codigo;
    String nome;
    String endereco;
    String cidade;
    String estado;
    String email;
    String senha;
    
    public ClienteModel RecuperarPeloId(int id) throws SQLException, NamingException{
        
        ClienteModel retorno = new ClienteModel();
        
        InitialContext contexto = new InitialContext();
	DataSource ds = (DataSource)contexto.lookup("jdbc/loja");/*Glassfish procura as conf do xml para conectar no banco*/
	Connection conexao = ds.getConnection();/*Conexão obtida*/

	String sql = "select * from clientes where id = ?";

	PreparedStatement comando = conexao.prepareStatement(sql);
        
	comando.setInt(1, id);        
        /*comando.setString(2, senha);*/

	ResultSet res = comando.executeQuery();
        
        retorno.codigo = res.getInt("codigo");
        retorno.endereco = res.getString("endereco");
        retorno.cidade = res.getString("cidade");
        retorno.estado = res.getString("estado");
        retorno.email = res.getString("email");
        retorno.senha = res.getString("senha");        
        
        return retorno;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
}
