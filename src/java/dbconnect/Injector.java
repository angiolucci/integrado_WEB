/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dbconnect;

import model.Journal;
import model.JournalIssue;
import model.PubMedArticle;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vinicius
 */
public class Injector extends HttpServlet {

    private Connection conn;
    private Statement stmt;
    private PreparedStatement ps;
    //private String conexao="jdbc:sqlserver://shelton.sor.ufscar.br:1433;database=labbd06";
    private String conexao="jdbc:sqlserver://shelton.sor.ufscar.br:1433;database=labbd06";
    //String conexao="jdbc:sqlserver://192.168.12.4:1433;database=labbd06";
    private String usuario="labbd06", senha="@masterkey@";
    
public Connection getConnection(){
        try { 
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
        } catch (Exception ex) {
            Logger.getLogger(Injector.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {    
            conn = DriverManager.getConnection(conexao,usuario,senha);
        } catch (SQLException ex) {
            Logger.getLogger(Injector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
}
    
public boolean test(){
    boolean connStatus = false;

	try{
	Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
	 
	   conn = DriverManager.getConnection(conexao,usuario,senha);
	   stmt = conn.createStatement();
           
	connStatus = true;

	conn.close();
	}
	catch (Exception e){
            connStatus = false;
	}
        return connStatus;

}
    
    public Injector(){
        
        if(this.test() == false){
            System.out.println("Falha ao conectar ao banco de dados!");
            System.exit(1);
        }
            
        try{
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
        //String conexao="jdbc:sqlserver://192.168.12.4:1433;database=labbd06";
        //String conexao="jdbc:sqlserver://shelton.sor.ufscar.br:1433;database=labbd06";
        //String usuario="labbd06", senha="@masterkey@";
        
        this.conn = DriverManager.getConnection(conexao,usuario,senha);
        this.stmt = conn.createStatement();

        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println("Erro");
            System.exit(1);
        }

     }
    
    public void insert(PubMedArticle article){
        if(article == null){
            System.out.println("Artigo apontando para nulo!");
            System.exit(1);
        }
        
        //Rejeita um artigo sem PK
        if(article.getArticleID() == 0)
            return;
        
        String strArticleID = Integer.toString(article.getArticleID());
        
         //Inserção de Journal
         JournalIssue  jnIssue = article.getJournalIssue();
         Journal jrnl = jnIssue.getJournal();
         
         String issn = jrnl.getIssn();
         String iso = jrnl.getIsoAbreviation();
         String jrnTitle = jrnl.getTitle();
         
         try{
             String str1 = "INSERT INTO JOURNAL VALUES( '" + issn + "','" +
                            iso + "','" + jrnTitle + "')";
             stmt.executeUpdate(str1);
         }catch(SQLException ex){
             System.out.println("ERRO journal:");
             System.out.println(ex.getMessage());
             System.exit(1);
         }
         System.out.println("Inseriu journal");
         
         // Inserção de Journal Issue      
         //System.out.println("ISSUE: " + jnIssue.getIssue());
         String issue = jnIssue.getIssue().toString();
         
         String volume = jnIssue.getVolume().toString();
         String data = jnIssue.getDateAsString(0);
         String medium = jnIssue.getCitedMedium();
         
         try{
             String str1 = "INSERT INTO JOURNALISSUE VALUES(" + issue + "," +
                     volume + ",'" + issn + "','" + data + "','" + medium + "')";
             stmt.executeUpdate(str1);                           
             
         }catch(SQLException ex){
             System.out.println("ERRO journalIssue:");
             System.out.println(ex.getMessage());
             System.exit(1);
         }
         System.out.println("Inseriu JournalIssue");
         
         //Inserção de PubMedArticle
         String articleID = article.getArticleID().toString();
         String affiliation = article.getAffliation();
         String pubStatus = article.getPublicationStatus();
         String articleTitle = article.getTitle();
         String pagBegin = article.getPagBegin().toString();
         String pagEnd = article.getPagEnd().toString();
         String pagTotal = article.getNumberOfPages().toString();
         
        String str10 = null;
         try{
             str10 = "INSERT INTO PUBMEDARTICLE VALUES(" + articleID + "," +
                     issue + ",'" + issn + "'," + volume + ",'" + affiliation +
                     "','" + pubStatus + "','" + articleTitle + "'," + pagBegin +
                     "," + pagEnd + "," + pagTotal + ")";
             stmt.executeUpdate(str10);
         }catch(SQLException ex){
             System.out.println("ERRO article:");
             System.out.println(ex.getMessage()); 
             System.out.println(str10);
             System.exit(1);
         }
         System.out.println("Inseriu PumedArticle");
       
        // Inserção de Keywords
        if(!(article.getKeywords().isEmpty())){
            for(int i = 0; i < article.getKeywords().size(); i++){
                try {
                    String strKW = article.getKeywords().get(i).getKeyWord();
                    String str1 = "INSERT INTO KEYWORD values('" + strKW + "')";
                    String str2 = "INSERT INTO ARTICLEKEYWORD (keyword, articleid) values ('"+strKW+"',"+strArticleID+")";

                    stmt.executeUpdate(str1);
                    stmt.executeUpdate(str2);
                } catch (SQLException ex) {
                    System.out.println("ERRO keyword: ");
                    System.out.println(ex.getMessage());
                    System.exit(1);
                }           
            }
            System.out.println("Inseriu keywords");
        }
        
        // Inserção de MeshTerms
        if(!(article.getMeshTerms().isEmpty())){
            for(int i = 0; i < article.getMeshTerms().size(); i++){
                try {
                    String strMesh = article.getMeshTerms().get(i).getDescription();
                    String str1 = "INSERT INTO MESHHEADING values('" + strMesh +"')";
                    String str2 = "INSERT INTO ARTICLEMESH (mesh, articleid) values ('" +
                                  strMesh + "'," + strArticleID + ")";

                    stmt.executeUpdate(str1);
                    stmt.executeUpdate(str2);
                } catch (SQLException ex) {
                    System.out.println("ERRO meshterm: ");
                    System.out.println(ex.getMessage());
                    System.exit(1);
                }
            }
            System.out.println("Inseriu MeshTerms");
       }
        
        //Inserção de Tipos de publicação
         for(int i = 0; i < article.getpTypes().size(); i++){
            try {
                String strPubType = article.getpTypes().get(i).getPubtype();
                String str1 = "INSERT INTO PUBTYPE values('" + strPubType + "')";
                String str2 = "INSERT INTO PUBMEDPUBTYPE (pubtype, articleid) values ('" +
                              strPubType + "'," + strArticleID + ")";
                
                stmt.executeUpdate(str1);
                stmt.executeUpdate(str2);
            } catch (SQLException ex) {
                System.out.println("ERRO pubtype: ");
                System.out.println(ex.getMessage());
                System.exit(1);
            }
        }
        System.out.println("Inseriu tipos de publicação");
         
         // Inserção da lista de autores
         for(int i = 0; i < article.getAuthors().size(); i++){
            try {
                String strForeName = article.getAuthors().get(i).getForename();
                String strLastName = article.getAuthors().get(i).getLastname();
                String strInitials = article.getAuthors().get(i).getInitials();
                
                String str1 = "INSERT INTO AUTHOR (forename, lastname, initials, valid)" +
                              " values(+'" + strForeName + "','" + strLastName + "','" + strInitials+
                              "', 1)";
                              
                String str2 = "INSERT INTO ARTICLEAUTHOR (forename, lastname, initials, articleid)" +
                              " values(+'" + strForeName + "','" + strLastName + "','" + strInitials+
                              "'," + strArticleID +")";
                
                stmt.executeUpdate(str1);
                stmt.executeUpdate(str2);
            } catch (SQLException ex) {
                System.out.println("ERRO author: ");
                System.out.println(ex.getMessage());
                System.exit(1);
            }
        }
         System.out.println("Inseriu lista de autores");
         
        // Inserção da lista de substâncias
         for(int i = 0; i < article.getSubstances().size(); i++){
            try {
                String strSubstance = article.getSubstances().get(i).getNameOfSubstance();
                
                String str1 = "INSERT INTO SUBSTANCE values('" + strSubstance+"')";
                              
                String str2 = "INSERT INTO ARTICLESUBSTANCE (substance, articleid)" +
                              " values('" + strSubstance +"'," + strArticleID+")";
                
                stmt.executeUpdate(str1);
                stmt.executeUpdate(str2);
            } catch (SQLException ex) {
                System.out.println("ERRO substance: ");
                System.out.println(ex.getMessage());
                System.exit(1);
            }
        }
        System.out.println("Inseriu lista de substâncias");
        System.out.println("INSERIU ARTIGO:" + articleTitle);
    }

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
            out.println("<title>Servlet Injector</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Injector at " + request.getContextPath() + "</h1>");
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
