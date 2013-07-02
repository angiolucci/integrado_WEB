/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Author;
/**
 *
 * @author renato
 */
public class DAOAuthor {
       Connection conn = null;
      Statement sqlStm = null;
      ResultSet rs = null;
      
    public DAOAuthor() throws DAOException{
        this.conn = ConnectionFactory.getConnection(50);    
    }
      
      
public List<Author> consultaAuthor(int articleId){
      List<Author> listaAuthor = new ArrayList<Author>();
      
       try {
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();
            CallableStatement cs = conn.prepareCall("{call usp_(?,?)}");
            cs.setInt("articleId",articleId);
            ResultSet rs = cs.executeQuery();

            while(rs.next()){
           Author aut = new Author();
            aut.setForename(rs.getString("forname"));
            aut.setLastname(rs.getString("lastname"));
            listaAuthor.add(aut);
    }
            
            conn.close();
            
       } catch(Exception ex){
           //Logger.getLogger(DAOLogin.class.getName()).log(Level.SEVERE, null, ex);
       }
    
    return listaAuthor;
}
    
    
     public int inserir_author(Author a ){
    
    try{
        
            sqlStm = conn.createStatement();
            
            PreparedStatement cs = conn.prepareStatement("EXEC usp_addAutor ?,?,?");
            cs.setString(1, a.getForename());
            cs.setString(1, a.getLastname());
            cs.setString(1, a.getInitials());
        
            }catch(Exception ex){
        
             }
    
    return 

}    
    
    

    
}
