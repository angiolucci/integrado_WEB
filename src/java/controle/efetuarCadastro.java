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
import model.SystemUser;
import persistence.DAOLogin;

/**
 *
 * @author vinicius
 */
public class efetuarCadastro extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("username");
        String senha = request.getParameter("pwd");
        String email = request.getParameter("email");
        
        SystemUser user = new SystemUser();
        user.setEmail(email);
        user.setShadow(senha);
        user.setLogin(login);
        user.setType(50);
        
        DAOLogin dl = new DAOLogin();

        dl.insere(user);
        request.getSession().setAttribute("user", user);
        
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
        
    }

}