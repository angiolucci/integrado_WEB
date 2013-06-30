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
    
    
    public DAOSubstancia() throws DAOException{
        this.conn = ConnectionFactory.getConnection();    
    }
    
    public List<Substance> consultaSubstancia(String subs) throws SQLException{
        List<Substance> listaSubstance = new ArrayList<Substance>();
        PreparedStatement ps;
        
        /*Consulta parametrizada por uma procedure*/
        //ps = conn.prepareStatement("EXEC usp_buscasubstancia ?");
        //ps.setString(1, subs);        
        ResultSet rs;        
        
        /*Consulta sem a procedure*/
        String sql = "SELECT * FROM SUBSTANCE WHERE SUBSTANCE.NAMEOFSUBSTANCE LIKE '"+subs+"%'";
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();                
        while(rs.next()){
            Substance s = new Substance();            
            s.setNameOfSubstance(rs.getString("NAMEOFSUBSTANCE"));
            listaSubstance.add(s);            
        }
        
        return listaSubstance;
    
    }

    
    
}
