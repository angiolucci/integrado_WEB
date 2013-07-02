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
        this.conn = ConnectionFactory.getConnection();    
    }
      
       
public int inserirArtigo(PubMedArticle pub) throws SQLException{
           
            PreparedStatement cs = conn.prepareStatement("EXEC usp_addPubmedArticle ?,?,?,?,?,?,?,?,?,? ");
            cs.setString(1, pub.getArticleID().toString());
            cs.setString(2, pub.getJournalIssue().getIssue().toString());
            cs.setString(3, pub.getJournalIssue().getJournal().getIssn());
            cs.setString(4, pub.getJournalIssue().getVolume().toString());
            cs.setString(5, pub.getAffliation());
            cs.setString(6, pub.getPublicationStatus());
            cs.setString(7, pub.getTitle());
            cs.setString(8, pub.getPagBegin().toString());
            cs.setString(9, pub.getPagEnd().toString());
            cs.setString(10, pub.getUser());
    return cs.executeUpdate();     

    
}     

public int excluirArtigo(int id) throws SQLException{
           
            PreparedStatement cs = conn.prepareStatement("EXEC usp_addPubmedArticle ?,?,?,?,?,?,?,?,?,? ");
            cs.setInt(1, id);
    return cs.executeUpdate();     

    
}     

      
      
public List<PubMedArticle> consultaArticle(String titulo) throws DAOException, SQLException{
            
            List<PubMedArticle> pub = new ArrayList<PubMedArticle>();
            PreparedStatement ps;
            
            ps = conn.prepareStatement("EXEC usp_buscarapida ?");
            ps.setString(1, titulo);

            ResultSet rs ;
            rs = ps.executeQuery();
            
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
