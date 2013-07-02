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
import model.PubMedArticle;

/**
 *
 * @author Mercês
 */
public class DAOArtigoUsuario {
    
    private Connection conn;
    
    
    public DAOArtigoUsuario() throws DAOException{
        this.conn = ConnectionFactory.getConnection();    
    }
    
    
    public List<PubMedArticle> consultaArticleUsr(String user) throws DAOException, SQLException{
            
            List<PubMedArticle> pub = new ArrayList<PubMedArticle>();
            PreparedStatement ps;
            
            ps = conn.prepareStatement("EXEC usp_buscarapidauser ?");
            ps.setString(1, user);

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
