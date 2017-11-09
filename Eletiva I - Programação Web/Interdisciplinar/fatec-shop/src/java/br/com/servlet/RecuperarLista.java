package br.com.servlet;

import br.com.model.ClienteModel;
import br.com.dao.ClienteDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RecuperarLista extends HttpServlet {   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
      
        ClienteDAO cli = new ClienteDAO();
        
        List<ClienteModel> contatos = cli.getContatos();
        Gson gson = new Gson();
        String json = gson.toJson(contatos); 
        response.setContentType("text/plain");
        response.getWriter().write(json);
    }
}
