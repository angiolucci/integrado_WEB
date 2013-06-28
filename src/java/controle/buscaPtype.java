/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dbconnect.Injector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
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
public class buscaPtype extends HttpServlet {

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
        Statement st;        
        String pubTypes = null;
        try {
            pubTypes = null;
            st = new Injector().getConnection().createStatement();
            String consulta = "SELECT PUBTYPE FROM PUBTYPE";
            ResultSet rs = st.executeQuery(consulta);
            while(rs.next()){
                String ptype = rs.getString(1);
                pubTypes  += "<option value=\"" + ptype + "\">" + ptype + "</option>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(buscaPtype.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        PrintWriter writer = response.getWriter();
        writer.print(pubTypes);
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
