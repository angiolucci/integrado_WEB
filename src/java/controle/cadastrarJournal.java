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
import persistence.DAOException;
import persistence.DAOJournal;
import persistence.DAOMesh;

/**
 *
 * @author renato
 */
public class cadastrarJournal extends HttpServlet {

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
            out.println("<title>Servlet cadastrarJournal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cadastrarJournal at " + request.getContextPath() + "</h1>");
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
        
            
            String issn = request.getParameter("issn");
            String iso = request.getParameter("iso");
            String title = request.getParameter("title");
            
            try {
             int val;   
                String msg;
                DAOJournal daojournal = new DAOJournal();                
                val =  daojournal.inserirJournal(issn,iso,title );
                
            if (val == 1){
                msg = " <script> window.alert(\"Dados cadastrados com Sucesso !\")</script>";
            }else{
                msg = " <script> window.alert(\"Erro ao cadastrar Tipo de Publicação !\")</script>";
            }
            
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
