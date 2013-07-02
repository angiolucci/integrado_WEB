/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MeshHeading;
import persistence.DAOException;
import persistence.DAOMesh;

/**
 *
 * @author Mercês
 */
public class excluirMesh extends HttpServlet {

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
            out.println("<title>Servlet excluirMesh</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet excluirMesh at " + request.getContextPath() + "</h1>");
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
                        
                String mesh = request.getParameter("mesh");        
                DAOMesh daomesh = null;  
                try {
                    daomesh = new DAOMesh();
                } catch (DAOException ex) {
                    Logger.getLogger(excluirMesh.class.getName()).log(Level.SEVERE, null, ex);
                }
                List<MeshHeading> listaMesh = null ;
                try {
                    listaMesh = (List<MeshHeading>) daomesh.consultaMeshHeading(mesh);
                } catch (SQLException ex) {
                    Logger.getLogger(excluirMesh.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                
                String Del = null;
                
                Del += "<thead> <tr> <th> Termo Mesh </th> <th>Excluir ?</th>  </tr> </thead>";
                for(MeshHeading m:listaMesh){                    
                    Del += "<tr><td>"+m.getDescription()+"</td>"+"<td>"
                            + "<button type=\"submit\" class=\"btn\" onclick\" = excluir("+m.getDescription()+"\")>Excluir</button></td> </tr>";                                        
                }
                
            
                PrintWriter writer = response.getWriter();
                writer.print(Del);
                writer.close();            
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
        
            int val;
            String mesh = request.getParameter("retorno");
            String msg;
            try {
                DAOMesh daomesh = new DAOMesh();                
                val =  daomesh.excluirMesh(mesh);
                
            if (val == 1){
                msg = " <script> window.alert(\"Dados excluidos com Sucesso !\")</script>";
            }else{
                msg = " <script> window.alert(\"Erro ao excluir Mesh !\")</script>";
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
