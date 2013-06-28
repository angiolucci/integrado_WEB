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
 * @author vinicius
 */
public class DAOLogin {
    Connection conn = null;
    Statement sqlStm = null;
    ResultSet rs = null;
    SystemUser sysUser = null;
    
    public SystemUser doLogin(String usuario, String senha){
        String stmt = "SELECT NOME_USUARIO FROM USUARIO WHERE " +
                "NOME_USUARIO = '" + usuario + "' AND SENHA = '" + senha + "'";
        
       try {
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();
            rs = sqlStm.executeQuery(stmt);
            
            if(rs.next()){
                sysUser = new SystemUser();
                sysUser.setLogin(usuario);
                sysUser.setType(12);
            }
            
            conn.close();
            
       } catch(Exception ex){
           Logger.getLogger(DAOLogin.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return sysUser;            
        
    }
}
