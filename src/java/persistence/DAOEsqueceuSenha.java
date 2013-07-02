/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.SystemUser;

/**
 *
 * @author Guilherme
 */
public class DAOEsqueceuSenha {
    Connection conn = null;
    Statement sqlStm = null;
    ResultSet rs = null;
    String senha = "";
    
    public String recuperaSenha(String email){
        String stmt = "SELECT SENHA FROM USUARIO WHERE " +
                "EMAIL = '" + email + "'";
        
       try {
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();
            rs = sqlStm.executeQuery(stmt);
            
            if(rs.next()){
                senha = rs.getString("senha");
            }
            
            conn.close();
            
       } catch(Exception ex){
           Logger.getLogger(DAOLogin.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return senha;            
        
    }
}
