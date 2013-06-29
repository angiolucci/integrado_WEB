/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.MeshHeading;

/**
 *
 * @author renato
 */
public class DAOMeshHeading {
      Connection conn = null;
      Statement sqlStm = null;
      ResultSet rs = null;
      
public List<MeshHeading> consultaMesh(int articleId){
      List<MeshHeading> listaMesh = new ArrayList<MeshHeading>();
      
       try {
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();
            CallableStatement cs = conn.prepareCall("{call usp_(?,?)}");
            cs.setInt("articleId",articleId);
            ResultSet rs = cs.executeQuery();

            while(rs.next()){
           MeshHeading aut = new MeshHeading();
            aut.setDescription(rs.getString("description"));
            listaMesh.add(aut);
    }
            
            conn.close();
            
       } catch(Exception ex){
             ex.printStackTrace();
 
       }
    
    return listaMesh;
}
    
    
        
}
