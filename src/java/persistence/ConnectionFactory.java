/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author vinicius
 */
public class ConnectionFactory {
    //private static String server = "localhost:1433";
    //private static String server = "192.168.12.4:1433";
    private static String server = "shelton.sor.ufscar.br:1433";
    private static String dataBase = "labbd06";
    private static String userDb = "labbd06";
    private static String passDb = "@masterkey@";
    
    public static Connection getConnection() throws DAOException {
        try {
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
            String conexao = "jdbc:sqlserver://" + server + ";database=" + dataBase;
            String usuario = userDb, senha = passDb;
            Connection conn = DriverManager.getConnection(conexao, usuario, senha);
            return conn;
        } catch (Exception e) {
            throw new DAOException(e.getMessage());
        }
    }
    
        public static Connection getConnection(int roleType) throws DAOException {
            String user = null;
            String pass = null;
            
            switch (roleType){
                case 99:     // Lion
                    return getConnection();
                case 50:     // Rabbit
                    user = "regist_user";
                    pass = "@rabbit_PWD#";
                    break;
                case 25:     // Fox
                    user = "advanc_user";
                    pass = "@fox_PWD#";
                    break;
                case 12:     // Turtle
                    user = "simple_user";
                    pass = "@turtle_PWD#";
                    break;
                default:
                    throw new DAOException("invalid username or password!");
                    
            }
            try {
                Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
                String conexao = "jdbc:sqlserver://" + server + ";database=" + dataBase;
                String usuario = user, senha = pass;
                Connection conn = DriverManager.getConnection(conexao, usuario, senha);
                return conn;
            } catch (Exception e) {
                throw new DAOException(e.getMessage());
            }
            
        }
        
   public static void closeConnection(Connection conn, PreparedStatement ps, 
           ResultSet rs) throws DAOException {
        close(conn, ps, rs);
    }

        public static void closeConnection(Connection conn, PreparedStatement ps)
                throws DAOException {
            close(conn, ps, null);
        }

        public static void closeConnection(Connection conn)
                throws DAOException {
            close(conn, null, null);
        }

        private static void close(Connection conn, PreparedStatement ps, ResultSet rs)
                throws DAOException {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                throw new DAOException(e.getMessage());
            }
        }
        
        public static void main(String args[]){
            System.out.println("Testando as conexões com o banco de dados:");
            Connection con;
            System.out.print("Conexão LION:");
            try {
                con = getConnection(99);
                System.out.println("\t\t[OK]");
                con.close();
            } catch(Exception ex){
                System.out.println("\t\t*FALHOU*");
            }
            
            System.out.print("Conexão RABBIT:");
            try {
                con  = getConnection(50);
                System.out.println("\t\t[OK]");
                con.close();
            } catch(Exception ex){
                System.out.println("\t\t*FALHOU*");
            }
            
            System.out.print("Conexão FOX:");
            try {
                con = getConnection(25);
                System.out.println("\t\t[OK]");
                con.close();
            } catch(Exception ex){
                System.out.println("\t\t*FALHOU*");
            }
            System.out.print("Conexão TURTLE:");
            try {
                con = getConnection(12);
                System.out.println("\t\t[OK]");
                con.close();
            } catch(Exception ex){
                System.out.println("\t\t*FALHOU*");
            }
        }
    }
