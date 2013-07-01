/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.BuscaAvancada3;

/**
 *
 * @author renato
 */
public class DAOBuscaAvancada3 {

    public List<BuscaAvancada3> consultaAvancada3(String tipo, String mesh, String subs) throws DAOException {
        List<BuscaAvancada3> listaBA = new ArrayList<BuscaAvancada3>();

        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        Statement sqlStm = null;
        
        try {
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();

            ps = conn.prepareStatement("EXEC usp_consulta3 ?,?,?");
            ps.setString(1, tipo);
            ps.setString(2, mesh);
            ps.setString(3, subs);

            rs = ps.executeQuery();

            while (rs.next()) {
                String title = rs.getString(1);// title

                listaBA.add(new BuscaAvancada3(title));
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
    