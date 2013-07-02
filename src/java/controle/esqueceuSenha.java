/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.mail.*;
import persistence.DAOEsqueceuSenha;

/**
 *
 * @author Guilherme
 */
public class esqueceuSenha extends HttpServlet {

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
        String dest = request.getParameter("email");
       
        String servidor = dest.substring(dest.indexOf("@") + 1);
        Email email = new SimpleEmail();
        String msg;
        String assunto = "Recuperação de senha";
        
        try {
            DAOEsqueceuSenha dao = new DAOEsqueceuSenha();
            String senha = dao.recuperaSenha(dest);
            if (senha.equals("")) {
                response.sendRedirect("erroEnvio.jsp");
            } else {
                msg = "A sua senha é: " + senha + "\n\nCaso não tenha solicitado"
                + " recuperação de senha, ignore este e-mail.\n\nEquipe PubMed";
                email.setStartTLSEnabled(true);
                email.addTo(dest);
                email.setHostName("smtp.gmail.com");
            
                email.setAuthentication("pubmed2013@gmail.com", "integrado2013");
                email.setFrom("pubmed2013@gmail.com");
                email.setMsg(msg);
                email.setSubject(assunto);
                email.send();
                response.sendRedirect("confirmacaoEnvio.jsp");
            }
        } catch(EmailException e) {
            e.printStackTrace();
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
