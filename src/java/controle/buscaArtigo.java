/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

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
            DAOPubMedArticle DAOartigo = new DAOPubMedArticle();
            List<PubMedArticle> listaArtigos;
            String title = request.getParameter("ttl");
            listaArtigos = DAOartigo.consultaArticle(title);
            
            for(PubMedArticle i:listaArtigos){
            Artigos = "<tr>";
            Artigos +="<td>" + i.getTitle() + "</td>";
            Artigos +="<td>" + i.getJournal() + "</td> +</tr>";
            
            
            DAOAuthor DAOAuthor = new DAOAuthor();
            LinkedList<Author> listaAutor = null;
            listaAutor = (LinkedList<Author>) DAOAuthor.consultaAuthor(i.getArticleID());

                for(Author j:listaAutor){
                    Artigos +="<tr>";
                    Artigos +="<td>" + j.getForename() + "</td>";
                    Artigos +="<td>" + j.getForename() + "</td>";
                    Artigos +="</tr>";
                }
                i.setAuthors(listaAutor);
       
            
            }
            
            
            
            
           /* 
            String title = request.getParameter("ttl");
            String Artigo = null;
            if( title.equals("a")){
              Artigo = "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
              Artigo += "<tr> <td> teste1 </td> </tr>";
                
             
              
       
            }else if(title.equals("aa")){
              Artigo = "<tr> <td> aaaaa </td> </tr>";
               Artigo+= "<tr> <td> bbbbb </td> </tr>";
                
                
            }else if(title.equals("aaa")){
                   Artigo = "<tr> <td> bbbbb </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo +=  "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>";
                Artigo += "<tr> <td> asghajsgaj </td> </tr>"; 
            }
        */
            
           // System.out.println(Artigo);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
             
        
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
