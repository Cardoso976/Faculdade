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

    /**
     *
     * @return
     * @throws SQLException
     * @throws NamingException
     */
    public ClienteModel RecuperarLista() throws SQLException, NamingException{

       ClienteModel cliente = new ClienteModel();

        InitialContext contexto = new InitialContext();
        DataSource ds = (DataSource) contexto.lookup("jdbc/fatec-shop");/*Glassfish procura as conf do xml para conectar no banco*/
        Connection conexao = ds.getConnection();/*Conexão obtida*/

        String sql = "select * from clientes where codigo=1";

        PreparedStatement comando = conexao.prepareStatement(sql);

            comando.setInt(1, 1);       
          /*comando.setString(2, senha);*/
        ResultSet res = comando.executeQuery();
        
        //while (res != null) {
            cliente = new ClienteModel();                    
            cliente.codigo = res.getInt("codigo");
            cliente.endereco = res.getString("endereco");
            cliente.cidade = res.getString("cidade");
            cliente.estado = res.getString("estado");
            cliente.email = res.getString("email");
            cliente.senha = res.getString("senha");
           /*cli.add(cliente);*/
        //}   
               
        return cliente;
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
