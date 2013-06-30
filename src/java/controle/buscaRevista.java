/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dbconnect.Injector;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import model.Journal;
import persistence.DAOException;
import persistence.DAOJournal;


/**
 *
 * @author vinicius
 */
public class buscaRevista extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet buscaRevista</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet buscaRevista at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
        DAOJournal daojour = new DAOJournal();
        List<Journal> listaJournal ;
        
        String journal = request.getParameter("journal");
        listaJournal = (List<Journal>) daojour.consultaJournal(journal);
        
        request.setAttribute("listaSubstance", listaJournal);         
        RequestDispatcher rd = request.getRequestDispatcher("src/resultadoBuscaJournal.jsp");        
        rd.forward(request, response);     
        }catch (DAOException ex) {        
            throw new ServletException(ex.getMessage());
        } catch (SQLException ex) {            
            throw new ServletException(ex.getMessage());
        }
        
        
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setCharacterEncoding("UTF-8");
        Statement st;        
        String revistas = null;
        try {
            revistas = "<option value=\"blank\"> </option>";
            st = new Injector().getConnection().createStatement();
            String consulta = "SELECT ISSN, TITLE  FROM JOURNAL WHERE ISSN != '-' AND ISSN != ' '";
            ResultSet rs = st.executeQuery(consulta);
            while(rs.next()){
                String issn = rs.getString(1);
                String title = rs.getString(2);
                revistas  += "<option value=\"" + issn + "\">" + title + "</option>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(buscaRevista.class.getName()).log(Level.SEVERE, null, ex);
            revistas = "Falha";
        }
        
        PrintWriter writer = response.getWriter();
        writer.print(revistas);
        writer.close();
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
