/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package libs;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
/**
 *
 * @author vinicius
 */
public class TesteBD {
    //Objeto que guarda informacoes da conexao com o SGBD.
    private Connection conn;
    //Objeto usado para enviar comandos SQL no SGBD
    private Statement stmt;
    
    public static void main(String[] args){
        TesteBD t = new TesteBD();
    }
    
    public TesteBD() {

    try {
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
        String conexao = "jdbc:sqlserver://192.168.12.4:1433;database=labbd06";
        String usuario = "labbd06", senha = "@masterkey@";
        conn = DriverManager.getConnection(conexao, usuario, senha);
        stmt = conn.createStatement();

        System.out.println("Conexão OK!!!");

        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
        System.out.println("Erro");
    }

}
}
