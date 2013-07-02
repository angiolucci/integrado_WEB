/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author renato
 */
public class DAOKeyword {
    
        public void insere (String kw, int articleID) {
            
            Connection conn = null;
            Statement sqlStm = null;
            ResultSet rs = null;
            
            try{
              conn = ConnectionFactory.getConnection();
              sqlStm = conn.createStatement();
              String st1 = "INSERT INTO KEYWORD VALUES('" + kw +"')";
              sqlStm.executeUpdate(st1);
              
              sqlStm = conn.createStatement();
              String st2 = "INSERT INTO ARTICLEKEYWORD VALUES('" + kw + "'," + articleID + ")";
              sqlStm.executeUpdate(st2);
              
              conn.close();
              
               
            } catch (Exception ex){
                Logger.getLogger(DAOKeyword.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
}
