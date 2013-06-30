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
import model.Journal;
import model.JournalIssue;

/**
 *
 * @author Mercês
 */
public class DAOJournalIssue {
    
    private Connection conn;
    
    public DAOJournalIssue() throws DAOException{
        this.conn = ConnectionFactory.getConnection();    
    }
    
    public List<JournalIssue> consultaJournalIssue(String journalissue) throws SQLException{
        List<JournalIssue> listaJournalIssue = new ArrayList<JournalIssue>();
        PreparedStatement ps;
        
        /*Consulta parametrizada por uma procedure*/
        //ps = conn.prepareStatement("EXEC usp_buscajournalissue ?");
        //ps.setString(1, journalissue);        
        ResultSet rs;        
                        
        /*Consulta sem a procedure*/
        String sql = "SELECT  JOURNAL.TITLE, JOURNALISSUE.ISSUE, JOURNALISSUE.ISSN, JOURNALISSUE.VOLUME"
                + "FROM JOURNALISSUE, JOURNAL WHERE (JOURNAL.ISSN = JOURNAILISSUE.ISSN) AND  "
                + "(JOURNAL.TITLE LIKE '"+journalissue+"%')";
        
        
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();                
        while(rs.next()){
            JournalIssue ji = new JournalIssue();  
            Journal j = new Journal();
            
            j.setTitle(rs.getString("TITLE"));            
            ji.setJournal(j);
            ji.setIssue(Integer.parseInt(rs.getString("ISSUE")));
            ji.setIssn(rs.getString("ISSN"));
            
            //Poderiamos recuperar a data de publicacao do Journal
            //ji.setPubDate(rs.);
            ji.setVolume(Integer.parseInt(rs.getString("VOLUME")));
            
            listaJournalIssue.add(ji);            
        }
        
        return listaJournalIssue;
    }
    
}
