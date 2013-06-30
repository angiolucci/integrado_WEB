/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


package persistence;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import model.PubMedArticle;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import model.Author;
/**
 *
 * @author renato
 */
public class DAOPubMedArticle {
      Connection conn = null;
      Statement sqlStm = null;
      ResultSet rs = null;
      String titulo;


      
      
      
       
public void inserirArtigo(String articleID,String lastname,String forename,
        String initials,String issn,String issue,String volume, String affiliation,
        String pubstatus, String pubtype, String title, String pagBegin, String pagEnd,
        Integer ipt,String pagTotal){
    
   
    try{
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();
            
            PreparedStatement cs = conn.prepareStatement("EXEC usp_insereAutor ?,?,?,?");
            cs.setString(1, titulo);
            cs.setString(1, titulo);
            cs.setString(1, titulo);
            cs.setInt(1, 1);

        
    }catch(Exception ex){
        
    }
    
   
    try{
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();
            
            PreparedStatement cs = conn.prepareStatement("EXEC usp_insereArticle ?,?,?,?,?,?,?,?");
            cs.setString(1, titulo);
            cs.setString(1, titulo);
            cs.setString(1, titulo);
            cs.setInt(1, 1);

        
        
    }catch(Exception ex){
        
    }

    
    try{
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();
            
            PreparedStatement cs = conn.prepareStatement("EXEC usp_insereArticle ?,?,?,?,?,?,?,?");
            cs.setString(1, titulo);
            cs.setString(1, titulo);
            cs.setString(1, titulo);
            cs.setInt(1, 1);

        
        
    }catch(Exception ex){
        
    }

    
    
    
}        
      
      
public List<PubMedArticle> consultaArticle(String titulo){
      List<PubMedArticle> pub = new ArrayList<PubMedArticle>();
      
       try {
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();
            
            PreparedStatement cs = conn.prepareStatement("EXEC usp_buscarapida ?");
            cs.setString(1, titulo);


            ResultSet rs = cs.executeQuery();
            
            while(rs.next()){
            PubMedArticle pumed = new PubMedArticle();
            pumed.setTitle(rs.getString("title"));
            pumed.setJournal(rs.getString("journal"));
            pumed.setArticleID(rs.getInt("articleid"));
            pub.add(pumed); 
            }
            conn.close();
            
       } catch(Exception ex){
           System.out.println("errrro");
           ex.printStackTrace();
       }
    
    return pub;
}


}
