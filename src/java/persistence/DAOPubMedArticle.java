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


public List<PubMedArticle> consultaArticle(String titulo){
      List<PubMedArticle> pub = new ArrayList<PubMedArticle>();
      
       try {
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();
            CallableStatement cs = conn.prepareCall("{call usp_buscarapida(?)}");
            cs.setString("titulo",titulo);
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
           ex.printStackTrace();
       }
    
    return pub;
}


}
