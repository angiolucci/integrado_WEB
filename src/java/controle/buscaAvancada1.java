/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import persistence.DAOBuscaAvancada1;
import model.BuscaAvancada1;

public class buscaAvancada1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String mesh = request.getParameter("mesh_term");
        String subs = request.getParameter("substancia");

        busca(request, response, mesh,subs);
    }

    private void busca(HttpServletRequest request, HttpServletResponse response, String mesh, String subs)
            throws ServletException, IOException {

        try {
            DAOBuscaAvancada1 ba = new DAOBuscaAvancada1();
            List<BuscaAvancada1> lista = (List<BuscaAvancada1>) ba.consultaAvancada1(mesh, subs) ;
            request.setAttribute("resulBA", lista);
        } catch (Exception sqle) {
            request.setAttribute("resulBA", null);
        }
        
        RequestDispatcher rd = null;
        rd = request.getRequestDispatcher("/advancedSearch1.jsp");
        rd.forward(request, response);
    }
}
