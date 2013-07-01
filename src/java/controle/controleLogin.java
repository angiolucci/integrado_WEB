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
import javax.servlet.http.HttpSession;
import persistence.DAOLogin;
import model.SystemUser;
/**
 *
 * @author vinicius
 */
public class controleLogin extends HttpServlet {


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

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
        HttpSession session = request.getSession();
        SystemUser sysuser = null;
      
        //response.setCharacterEncoding("UTF-8");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        if(login.equalsIgnoreCase("admin")){
            if(senha.equalsIgnoreCase(login)){
                sysuser = new SystemUser();
                sysuser.setLogin(login);
                sysuser.setType(99);
                request.getSession().setAttribute("user", sysuser);
            }
        } else
            if (login.equalsIgnoreCase("mdl_agent")){
                if(senha.equalsIgnoreCase(login)){
                sysuser = new SystemUser();
                sysuser.setLogin(login);
                sysuser.setType(25);
                request.getSession().setAttribute("user", sysuser);                 
                }
            } else {
                DAOLogin daoLg = new DAOLogin();
                sysuser = daoLg.doLogin(login, senha);
                if (sysuser != null)
                    sysuser.setType(50);
                
                session.setAttribute("user", sysuser);
            }
        
        if ((SystemUser)session.getAttribute("user") != null){
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        } else {
            response.sendRedirect("logIn.jsp");
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
