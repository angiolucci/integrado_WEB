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
        Statement st;  
        
        String articleID = request.getParameter("articleID");

        String lastname = request.getParameter("lastname");
        String forename = request.getParameter("forename");
        String initials = "-";
        
        String issn = request.getParameter("issn");    
        String issue = request.getParameter("issue");
        String volume = request.getParameter("volume");
        
        String affiliation = request.getParameter("aff");
        String pubstatus = request.getParameter("ps");         
        String pubtype = request.getParameter("pt");
        
        String title = request.getParameter("title");
        String pagBegin = request.getParameter("pbeg");
        String pagEnd = request.getParameter("pend"); 
        Integer ipt;
        String pagTotal;
        try {
            ipt = (Integer.parseInt(pagEnd) - Integer.parseInt(pagBegin) + 1);
        }catch(NumberFormatException ex){
            ipt = 1;
        }
        pagTotal = ipt.toString();
        
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
            String consulta = "INSERT INTO PUBMEDARTICLE VALUES (" + articleID + "," +
                              issue + ",'" + issn + "'," + volume + ",'" + affiliation +
                              "','" + pubstatus + "','" + title + "'," + pagBegin + "," +
                              pagEnd + "," + pagTotal + ")";
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
