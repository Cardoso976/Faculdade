/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package banco;

import br.com.dao.ClienteDAO;
import br.com.model.ClienteModel;
import com.google.gson.Gson;
import java.util.List;

/**
 *
 * @author Rodrigo Cardoso
 */
public class Banco {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ClienteDAO cliente = new ClienteDAO();
        
        List<ClienteModel> clientes = cliente.getContatos();
        
        Gson gson = new Gson();
        String json = gson.toJson(clientes);
        
        System.out.println(json);
    }
    
}
