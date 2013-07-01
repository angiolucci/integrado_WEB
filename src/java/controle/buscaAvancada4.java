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
import model.BuscaAvancada4;
import persistence.DAOBuscaAvancada4;
import persistence.DAOException;

public class buscaAvancada4 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String qtde = request.getParameter("qtde");

        try {
            busca(request, response, qtde);
        } catch (DAOException ex) {
            Logger.getLogger(buscaAvancada4.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void busca(HttpServletRequest request, HttpServletResponse response, String qtde)
            throws ServletException, IOException, DAOException {

        try {
            DAOBuscaAvancada4 ba = new DAOBuscaAvancada4();
            List<BuscaAvancada4> lista = (List<BuscaAvancada4>) ba.consultaAvancada4(qtde) ;
            request.setAttribute("resulBA", lista);
        } catch (Exception sqle) {
            request.setAttribute("resulBA", null);
        }
        
        RequestDispatcher rd = null;
        rd = request.getRequestDispatcher("viewAdvancedSearch4.jsp");
        rd.forward(request, response);

    }
}
