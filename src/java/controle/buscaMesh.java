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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MeshHeading;
import net.sf.json.JSONObject;
import persistence.DAOException;
import persistence.DAOMesh;

/**
 *
 * @author Mercês
 */
public class buscaMesh extends HttpServlet {

    
    
    
    
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
            out.println("<title>Servlet buscaMesh</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet buscaMesh at " + request.getContextPath() + "</h1>");
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
            DAOMesh daomesh = new DAOMesh();
            List<MeshHeading> listaMesh ;

            String mesh = request.getParameter("mesh");
            listaMesh = (List<MeshHeading>) daomesh.consultaMeshHeading(mesh);

            request.setAttribute("listaMesh", listaMesh);         
            RequestDispatcher rd = request.getRequestDispatcher("resultadoBuscaMesh.jsp");
            //RequestDispatcher rd = request.getRequestDispatcher("src/resultadoBuscaSubstancia.jsp");
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
        
            DAOMesh daomesh = null;
        try {
            daomesh = new DAOMesh();
        } catch (DAOException ex) {
            Logger.getLogger(buscaMesh.class.getName()).log(Level.SEVERE, null, ex);
        }
            List<MeshHeading> listaMesh = null ;

            String mesh = request.getParameter("mesh");
        try {
            listaMesh = (List<MeshHeading>) daomesh.consultaMeshHeading(mesh);
        } catch (SQLException ex) {
            Logger.getLogger(buscaMesh.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        Integer i=0;  
    
        JSONObject json = new JSONObject();  
      
        for(MeshHeading m:listaMesh){                      
            json.put("nome"+i, m.getDescription());
            i++;
        }
        
        
        PrintWriter writer = response.getWriter();
        writer.print(json);
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
