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
import model.MeshHeading;


/**
 *
 * @author Mercês
 */
public class DAOJournal {
    
    private Connection conn;
    
    public DAOJournal() throws DAOException{
        this.conn = ConnectionFactory.getConnection();    
    }
    
    public List<Journal> consultaJournal(String journ) throws SQLException{
        List<Journal> listaJournal = new ArrayList<Journal>();
        PreparedStatement ps;
        
        /*Consulta parametrizada por uma procedure*/
        ps = conn.prepareStatement("EXEC usp_buscajournal ?");
        ps.setString(1, journ);        
        ResultSet rs;        
        
        /*Consulta sem a procedure*/
        /*String sql = "SELECT * FROM JOURNAL WHERE JOURNAL.TITLE LIKE '"+journ+"%'";
        ps = conn.prepareStatement(sql);*/
        rs = ps.executeQuery();                
        while(rs.next()){
            Journal j = new Journal();            
            j.setTitle(rs.getString("TITLE"));
            j.setIssn(rs.getString("ISSN"));
            j.setIsoAbreviation(rs.getString("ISOABREVIATION"));
            listaJournal.add(j);            
        }
        
        return listaJournal;
    
    }
    
    public Journal consultaJournalAbsoluta(String journ) throws SQLException{
        PreparedStatement ps;
        
        /*Consulta parametrizada por uma procedure*/
        ps = conn.prepareStatement("EXEC usp_buscajournal ?");
        ps.setString(1, journ);        
        ResultSet rs;        
        
        /*Consulta sem a procedure*/
        /*String sql = "SELECT * FROM JOURNAL WHERE JOURNAL.TITLE LIKE '"+journ+"%'";
        ps = conn.prepareStatement(sql);*/
        rs = ps.executeQuery();                
        Journal j = new Journal(); 
        if(rs.next()){
                       
            j.setTitle(rs.getString("TITLE"));
            j.setIssn(rs.getString("ISSN"));
            j.setIsoAbreviation(rs.getString("ISOABREVIATION"));            
        }
        
        return j;
    
    }
    
    
    
    public int inserirJournal(String issn, String iso, String title) throws SQLException{
        PreparedStatement ps;
                
        ps = conn.prepareStatement("EXEC usp_addjournal ?,?,?");                        
        ps.setString(1, issn);        
        ps.setString(2, iso);
        ps.setString(3, title);
        return ps.executeUpdate();
    }

    
    
}
