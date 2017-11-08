package servlet;

import com.google.gson.Gson;
import fonte.ClienteModel;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RecuperarLista extends HttpServlet {   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
      
        ClienteModel cli = new ClienteModel();
        Gson gson = new Gson();
        
        try {
           String json = gson.toJson(cli.RecuperarLista());
           response.setContentType("text/plain");
           response.getWriter().write(json);
        } catch (SQLException | NamingException ex) {
            Logger.getLogger(RecuperarLista.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
