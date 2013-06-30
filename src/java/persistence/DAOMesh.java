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
import model.MeshHeading;

/**
 *
 * @author Mercês
 */
public class DAOMesh {
    
     private Connection conn;
    
    
    public DAOMesh() throws DAOException{
        this.conn = ConnectionFactory.getConnection();    
    }
    
    public List<MeshHeading> consultaMeshHeading(String mesh) throws SQLException{
        List<MeshHeading> listaMeshHeading = new ArrayList<MeshHeading>();
        PreparedStatement ps;
        
        /*Consulta parametrizada por uma procedure*/
        ps = conn.prepareStatement("EXEC usp_buscamesh ?");
        ps.setString(1, mesh);        
        ResultSet rs;        
        
        /*Consulta sem a procedure*/
        //String sql = "SELECT * FROM MESHHEADING WHERE MESHHEADING.DESCRIPTION LIKE '"+mesh+"%'";
        //ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();                
        while(rs.next()){
            MeshHeading m = new MeshHeading();            
            m.setDescription(rs.getString("DESCRIPTION"));
            listaMeshHeading.add(m);            
        }
        
        return listaMeshHeading;
    }
    
}
