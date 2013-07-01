/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.BuscaAvancada4;

/**
 *
 * @author renato
 */
public class DAOBuscaAvancada4 {

    public List<BuscaAvancada4> consultaAvancada4(int quantidade) throws DAOException {
        List<BuscaAvancada4> listaBA = new ArrayList<BuscaAvancada4>();

        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        Statement sqlStm = null;
        
        try {
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();

            ps = conn.prepareStatement("EXEC usp_consulta4 ?");
            ps.setInt(1, quantidade);
            
            rs = ps.executeQuery();

            while (rs.next()) {
                String title = rs.getString(1);// title
                int qtde = rs.getInt(2);
                
                listaBA.add(new BuscaAvancada4(title,qtde));
            }
            conn.close();
            return listaBA;


        } catch (SQLException ex) {
            //Logger.getLogger(DAOLogin.class.getName()).log(Level.SEVERE, null, ex);
            throw new DAOException(ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }

    }
}
    