/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Journal;
import persistence.DAOException;
import persistence.DAOJournal;

/**
 *
 * @author renato
 */
public class alteraJournal extends HttpServlet {

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
            out.println("<title>Servlet alteraJournal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet alteraJournal at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
         
         request.setCharacterEncoding("UTF-8");
        
            
            String title = request.getParameter("titulo");
            
            try {
                   
                String msg;
                DAOJournal daojournal = new DAOJournal();                
                Journal journ =  daojournal.consultaJournalAbsoluta(title);
                String isoabrev = journ.getIsoAbreviation();

                String iss = journ.getIssn();
                String titulo = journ.getTitle();
                
                msg = " <fieldset>" +
"                <p><span class=\"text-left\"><label for=\"isoabreviation\"> Abreviação ISO <span class=\"text-error\" id=\"isoabreviation\"></span> </label><input type=\"text\" id=\"isoabreviation\" value=\"" + isoabrev  +"\" ></span></p>" +
"                <p><span class=\"text-left\"><label for=\"issn\"> ISSN <span class=\"text-error\" id=\"erroissn\"></span> </label></span>    <span><input type=\"text\" id=\"issn\" value=\"" + iss + "\"></span></p>" +
"                <p><span class=\"text-left\"><label for=\"title\"> Title <span class=\"text-error\" id=\"errotitle\"></span> </label></span><span><input type=\"text\" id=\"title\" value=\"" + title + "\"></span></p>" +
"                " +
"                <!--<p><span class=\"text-error\"></span><span class=\"text-error\" id=\"desc-erro\"></span><span id=\"erro\"></span></p>-->" +
"                " +
"                <p><input type=\"button\" id=\"editar\" value=\"Editar\" class=\"btn\"> <input type=\"submit\" id=\"salvar\" value=\"Salvar\" class=\"btn\"> </p>" +
"              </fieldset>";
            
            
                PrintWriter writer = response.getWriter();
                writer.print(msg);
                writer.close();
            
            } catch (DAOException ex) {
                Logger.getLogger(cadastrarMesh.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(cadastrarMesh.class.getName()).log(Level.SEVERE, null, ex);
        }

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
