/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.PubType;

/**
 *
 * @author Mercês
 */
public class DAOPubType {
    
     private Connection conn;
    
    
    public DAOPubType() throws DAOException{
        this.conn = ConnectionFactory.getConnection();    
    }
    
    public int inserirPub(String pub) throws SQLException{
        List<PubType> listaPubType = new ArrayList<PubType>();
        PreparedStatement ps;
        
        /*Consulta parametrizada por uma procedure*/
        //ps = conn.prepareStatement("EXEC usp_addpubtype ?");
        //ps.setString(1, subs);        
        
        /*Consulta sem a procedure*/
        String sql = "INSERT INTO PUBTYPE VALUE '"+pub+"'";
        ps = conn.prepareStatement(sql);                        
        return ps.executeUpdate(sql);
    }
    
}
