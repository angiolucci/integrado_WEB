/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dbconnect.Injector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Journal;
import model.JournalIssue;
import model.PubMedArticle;
import model.SystemUser;
import persistence.DAOException;
import persistence.DAOKeyword;
import persistence.DAOPubMedArticle;

/**
 *
 * @author vinicius
 */
public class cadastrarArtigo extends HttpServlet {

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
            out.println("<title>Servlet cadastrarArtigo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cadastrarArtigo at " + request.getContextPath() + "</h1>");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        String articleID = request.getParameter("articleID");
        String title = request.getParameter("title");
        String pagBegin = request.getParameter("pbeg");
        String pagEnd = request.getParameter("pend");
        String affiliation = request.getParameter("aff");
        String pubstatus = request.getParameter("ps");         
        String pubtype = request.getParameter("pt");
        
        PubMedArticle pubmed = new PubMedArticle();
        pubmed.setArticleID(Integer.parseInt(articleID));
        pubmed.setPagBegin(Integer.parseInt(pagBegin));
        pubmed.setPagEnd(Integer.parseInt(pagEnd));
        pubmed.setTitle(title);
        pubmed.setAffliation(affiliation);
        pubmed.setPublicationStatus(pubstatus);
        SystemUser user = (SystemUser) request.getSession().getAttribute("user");
        pubmed.setUser(user.getLogin());
        String issn = request.getParameter("issn");    
        String issue = request.getParameter("issue");
        String volume = request.getParameter("volume");
        JournalIssue jissue = new JournalIssue();
        jissue.setIssue(Integer.parseInt(issue));
        jissue.setVolume(Integer.parseInt(volume));
        Journal journal = new Journal();
        journal.setIssn(issn);
        jissue.setJournal(journal);
        pubmed.setJournalIssue(jissue);
        
        
        
        
        try {
        DAOPubMedArticle daoArtigo = new DAOPubMedArticle();
        daoArtigo.inserirArtigo(pubmed);
        } catch (SQLException ex) {
            Logger.getLogger(cadastrarArtigo.class.getName()).log(Level.SEVERE, null, ex);
        } catch (DAOException ex) {
            Logger.getLogger(cadastrarArtigo.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String autorList = (String)request.getParameter("at");
        String kwList = (String) request.getParameter("kw");
        
        String autores[] = autorList.split(";");
        String palavras[] = kwList.split(";");
        
        DAOKeyword dkw = new DAOKeyword();
        for(String i : palavras){
            dkw.insere(i, Integer.parseInt(articleID));
        }
        
        
        
        /*
        
        
        
        
        
         try {
            st = new Injector().getConnection().createStatement();
            String consulta = "INSERT INTO AUTHOR VALUES ('" + forename + "','" +
                              lastname + "','" + initials + "',1)";
            st.executeQuery(consulta);
            st.close();

        } catch (SQLException ex) {
            Logger.getLogger(buscaPtype.class.getName()).log(Level.SEVERE, null, ex);
        }
         
      
        
         try {
            st = new Injector().getConnection().createStatement();
            String consulta = "INSERT INTO ARTICLEAUTHOR VALUES ('" + forename + "','" +
                              lastname + "','" + initials +  "'," + articleID + ")";
         st.executeQuery(consulta);
         st.close();

        } catch (SQLException ex) {
            Logger.getLogger(buscaPtype.class.getName()).log(Level.SEVERE, null, ex);
        }        
        
         String consultaPubType = null;
         try {
            st = new Injector().getConnection().createStatement();
            consultaPubType = "INSERT INTO PUBMEDPUBTYPE VALUES (" + articleID + ",'" +
                              pubtype + "')";
         st.executeQuery(consultaPubType);
         st.close();

        } catch (SQLException ex) {
             System.out.println(consultaPubType);
            Logger.getLogger(cadastrarArtigo.class.getName()).log(Level.SEVERE, null, ex);
        }
*/
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
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
