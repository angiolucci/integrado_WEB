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
        ps = conn.prepareStatement("EXEC usp_buscajournalissue ?");
        ps.setString(1, journalissue);        
        ResultSet rs;        
                        
        /*Consulta sem a procedure*/
        /*String sql = "SELECT  J.TITLE, JI.ISSUE, JI.ISSN, JI.VOLUME "
                + " FROM JOURNALISSUE JI, JOURNAL J WHERE "
                + " (J.ISSN = JI.ISSN) AND (JI.ISSUE = "+journalissue+")";
        */
        
        //ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();  
        int i,v;
        while(rs.next()){
            JournalIssue ji = new JournalIssue();  
            Journal j = new Journal();
            
            j.setTitle(rs.getString("TITLE"));            
            ji.setJournal(j);
            i = Integer.parseInt(rs.getString("ISSUE"));
            ji.setIssue(i);
            ji.setIssn(rs.getString("ISSN"));
            
            //Poderiamos recuperar a data de publicacao do Journal
            //ji.setPubDate(rs.);
            v = Integer.parseInt(rs.getString("VOLUME"));
            ji.setVolume(v);
            
            listaJournalIssue.add(ji);            
        }
        
        return listaJournalIssue;
    }
    
}
