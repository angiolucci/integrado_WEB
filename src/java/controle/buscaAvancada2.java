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
import model.BuscaAvancada2;
import persistence.DAOBuscaAvancada2;
import persistence.DAOException;

public class buscaAvancada2 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        try {
        DAOBuscaAvancada2 ba = new DAOBuscaAvancada2();
            
        String mesh = request.getParameter("mesh_term");
        String qtde = request.getParameter("qtde");
        
        List<BuscaAvancada2> lista = (List<BuscaAvancada2>) ba.consultaAvancada2(mesh, qtde);
        
        
        RequestDispatcher rd = null;
        
        request.setAttribute("resulBA", lista);
        
        rd = request.getRequestDispatcher("viewAdvancedSearch2.jsp");
        rd.forward(request, response);

            
        } catch (DAOException ex) {
            Logger.getLogger(buscaAvancada2.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void busca(HttpServletRequest request, HttpServletResponse response, String mesh, int qtde)
            throws ServletException, IOException, DAOException {

        try {
            
            //List<BuscaAvancada2> lista = new ArrayList<BuscaAvancada2>() ;

        } catch (Exception sqle) {
            request.setAttribute("resulBA", null);
        }
        
    }
}
