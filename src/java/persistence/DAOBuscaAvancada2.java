/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.BuscaAvancada2;

/**
 *
 * @author renato
 */
public class DAOBuscaAvancada2 {

    public List<BuscaAvancada2> consultaAvancada2(String mesh, String qtde) throws DAOException {
        List<BuscaAvancada2> listaBA = new ArrayList<BuscaAvancada2>();

        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        Statement sqlStm = null;
        
        try {
            conn = ConnectionFactory.getConnection();
            sqlStm = conn.createStatement();

            ps = conn.prepareStatement("EXEC usp_consulta2 ?,?");
            ps.setString(1, qtde);
            ps.setString(2, mesh);

            rs = ps.executeQuery();

            while (rs.next()) {
                String meshTerm = rs.getString("title"); // mesh
                int quantidade = Integer.parseInt(rs.getString("total")); // quantidade
                listaBA.add(new BuscaAvancada2(meshTerm,quantidade));
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
    