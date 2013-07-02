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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Author;
import model.Journal;
/**
 *
 * @author renato
 */
public class DAOPubMedArticle {
      Connection conn = null;
      Statement sqlStm = null;
      ResultSet rs = null;
      String titulo;

    public DAOPubMedArticle() throws DAOException{
        this.conn = ConnectionFactory.getConnection(50);    
    }
      
      
      
       
public void inserirArtigo(String articleID,String lastname,String forename,
        String initials,String issn,String issue,String volume, String affiliation,
        String pubstatus, String pubtype, String title, String pagBegin, String pagEnd,
        Integer ipt,String pagTotal){
    
   
    
    
   
    try{
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();
            
            PreparedStatement cs = conn.prepareStatement("EXEC usp_insereArticle ?,?,?,?,?,?,?,?");
            cs.setString(1, );
            cs.setString(1, articleid);
            cs.setString(1, issuejorn);
            cs.setString(1, issnjourn);
            cs.setString(1, volume);
            cs.setString(1, affiliation);

            cs.setString(1, pbstatus);
            cs.setString(1, titulo);
            cs.setString(1, pag_begin);
            cs.setString(1, pag_end);
            cs.setString(1, user);
             
            
            cs.setInt(1, 1);

        
        
    }catch(Exception ex){
        
    }

    
    try{
            
            sqlStm = conn.createStatement();
            
            PreparedStatement cs = conn.prepareStatement("EXEC usp_insereArticle ?,?,?,?,?,?,?,?");
            cs.setString(1, titulo);
            cs.setString(1, titulo);
            cs.setString(1, titulo);
            cs.setInt(1, 1);

        
        
    }catch(Exception ex){
        
    }

    
    
    
}        
      
      
public List<PubMedArticle> consultaArticle(String titulo) throws DAOException, SQLException{
            
            List<PubMedArticle> pub = new ArrayList<PubMedArticle>();
            PreparedStatement ps;
            
            ps = conn.prepareStatement("EXEC usp_buscarapida ?");
            ps.setString(1, titulo);

            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                PubMedArticle pumed = new PubMedArticle();
                pumed.setTitle(rs.getString("TITLE"));
                pumed.setAffliation(rs.getString("AFFILIATION"));
                pumed.setArticleID(Integer.parseInt(rs.getString("ARTICLEID")));
                pub.add(pumed);
            }

            return pub;
}


}
