/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.BuscaAvancada1;

/**
 *
 * @author renato
 */
public class DAOBuscaAvancada1 {

    public List<BuscaAvancada1> consultaAvancada1(String mesh, String subs) throws DAOException {
        List<BuscaAvancada1> listaBA = new ArrayList<BuscaAvancada1>();

        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        Statement sqlStm = null;
        
        try {
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();

            ps = conn.prepareStatement("EXEC usp_consulta1b ?,?");
            ps.setString(1, mesh);
            ps.setString(2, subs);

            rs = ps.executeQuery();

            while (rs.next()) {
                String title = rs.getString("title");
                String meshTerm = rs.getString("MESH");
                String substance = rs.getString("SUBSTANCE");

                listaBA.add(new BuscaAvancada1(title, meshTerm, substance));
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
