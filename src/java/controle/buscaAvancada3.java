/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BuscaAvancada3;
import persistence.DAOBuscaAvancada3;
import persistence.DAOException;

public class buscaAvancada3 extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String tipo = request.getParameter("tipo");
        String mesh = request.getParameter("mesh_term");
        String subs = request.getParameter("substancia");
        try {
            busca(request, response, tipo, mesh, subs);
        } catch (DAOException ex) {
            Logger.getLogger(buscaAvancada1.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
      private void busca(HttpServletRequest request, HttpServletResponse response, String tipo, String mesh, String subs)
            throws ServletException, IOException, DAOException {

        try {
            DAOBuscaAvancada3 ba = new DAOBuscaAvancada3();
            List<BuscaAvancada3> lista = (List<BuscaAvancada3>) ba.consultaAvancada3(tipo, mesh, subs) ;
            request.setAttribute("resulBA", lista);
        } catch (Exception sqle) {
            request.setAttribute("resulBA", null);
        }
        
        RequestDispatcher rd = null;
        rd = request.getRequestDispatcher("viewAdvancedSearch3.jsp");
        rd.forward(request, response);

    }

}
