/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;
import java.sql.*;
import java.util.*;
import model.Substance;

/**
 *
 * @author Mercês
 */
public class DAOSubstancia {
    
    private Connection conn;
    List<Substance> listaSubstance = new ArrayList<Substance>();
    
    public DAOSubstancia() throws DAOException{
        this.conn = ConnectionFactory.getConnection();    
    }
    
    public List<Substance> consultaSubstancia(String subs) throws SQLException{
    
        PreparedStatement ps;
        ResultSet rs;
        //ps = conn.prepareCall("{call usp_buscasubstancia()}");
        String sql = "SELECT * FROM SUBSTANCE s WHERE s.NAMEOFSUBSTANCE LIKE"+subs;
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
        
        while(rs.next()){
            Substance s = new Substance();            
            s.setNameOfSubstance(rs.getString("substance"));
            listaSubstance.add(s);            
        }
        
        return listaSubstance;
    
    }

    
    
}
