/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import com.sun.java.swing.plaf.windows.resources.windows;
import java.io.Console;
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
import persistence.DAOMesh;
import persistence.DAOPubType;

/**
 *
 * @author Mercês
 */
public class cadastrarMesh extends HttpServlet {

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
            out.println("<title>Servlet cadastrarPubtype</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cadastrarPubtype at " + request.getContextPath() + "</h1>");
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
        
            request.setCharacterEncoding("UTF-8");
        
            int val;
            String mesh = request.getParameter("retorno");
            String msg;
            try {
                DAOMesh daomesh = new DAOMesh();                
                val =  daomesh.inserirMesh(mesh);
                
            if (val == 1){
                msg = " <script> window.alert(\"Dados cadastrados com Sucesso !\")</script>";
            }else{
                msg = " <script> window.alert(\"Erro ao cadastrar Mesh !\")</script>";
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
        processRequest(request, response);
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
