/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import persistence.DAOPubMedArticle;
import model.PubMedArticle;
import java.util.*;
import javax.servlet.RequestDispatcher;
import model.Author;
import persistence.DAOAuthor;
import persistence.DAOException;
/**
 *
 * @author renato
 */
public class buscaArtigo extends HttpServlet {
    private boolean Artigos;

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
            out.println("<title>Servlet buscaArtigo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet buscaArtigo at " + request.getContextPath() + "</h1>");
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
        
        
            response.setCharacterEncoding("UTF-8");
            
            String Artigos =" ";
            String Head = "<tr><th>Título</th><th>Journal</th></tr>";
           try{
               
               
            DAOPubMedArticle daoartigo = new DAOPubMedArticle();     
            String title = request.getParameter("ttl");     
            
          
            List<PubMedArticle> listaArtigos;
          
            listaArtigos  = (List<PubMedArticle>) daoartigo.consultaArticle(title);
               
                
            for(PubMedArticle i:listaArtigos){
            Artigos += "<tr>";
            Artigos +="<td>" + i.getTitle() + "</td></tr>";
          //  Artigos += "<td>" + i.getAffliation() + "</td> </tr>";
           
            }
            
             }catch (DAOException ex) {        
            throw new ServletException(ex.getMessage());
            } catch (SQLException ex) {            
            throw new ServletException(ex.getMessage());
            }
            
            
           Head+= Artigos;
                PrintWriter writer = response.getWriter();        
		writer.print(Artigos);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
             
        try {
            
            System.out.print(" Entrou aqui");
            DAOPubMedArticle daoart = new DAOPubMedArticle();
            List<PubMedArticle> listaArtigo;

            String title = request.getParameter("title");
            listaArtigo = (List<PubMedArticle>) daoart.consultaArticle(title);

            request.setAttribute("listaArtigo", listaArtigo);
            RequestDispatcher rd = request.getRequestDispatcher("resultadoBuscaArtigo.jsp");
            //RequestDispatcher rd = request.getRequestDispatcher("src/resultadoBuscaSubstancia.jsp");
            rd.forward(request, response);

        } catch (DAOException ex) {
            throw new ServletException(ex.getMessage());
        } catch (SQLException ex) {
            throw new ServletException(ex.getMessage());
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
