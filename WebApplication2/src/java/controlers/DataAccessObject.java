/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.ResourceBundle;
import javax.sql.DataSource;
import model.Provance;
import oracle.jdbc.pool.OracleDataSource;

/**
 *
 * @author 1795545
 */
public class DataAccessObject {

//    private static Connection getConnection(){
//
//        // JDBC driver name and database URL
//        final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
//        final String DB_URL = "jdbc:oracle:thin:@//10.139.36.128:1521/orcl";
//        //  Database credentials
//        final String USER = "juser";
//        final String PASS = "juser";
//        Connection conn = null;
//        try {
//            // Register JDBC driver
//            Class.forName("org.apache.derby.jdbc.ClientDriver");
//
//            // Open a connection
//            conn = DriverManager.getConnection(DB_URL, USER, PASS);
//            System.out.println("Connected");
//            
//
//        } catch (SQLException se) {
//            //Handle errors for JDBC
//            se.printStackTrace();
//        } catch (Exception e) {
//            //Handle errors for Class.forName
//            e.printStackTrace();
//        }
//        return conn;
//    }
    public static Connection startConnection() {
        Connection con = null;
        try {
            ResourceBundle bundle = ResourceBundle.getBundle("dbinfo");

            String path = bundle.getString("Oracle.path");
            String user = bundle.getString("Oracle.user");
            String pass = bundle.getString("Oracle.pass");

            OracleDataSource oracleDataSource = new OracleDataSource();
            oracleDataSource.setURL(path);
            oracleDataSource.setUser(user);
            oracleDataSource.setPassword(pass);

            DataSource dataSource = oracleDataSource;
            con = dataSource.getConnection();

        } catch (Exception e) {
            System.out.println("Connection failure. See the console for more details...");
            e.printStackTrace();
        }
        return con;
    }

    public static void endConection(Connection con) {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                System.out.println("Problem closing connection");
                e.printStackTrace();
            }
        }
    }

    public static ArrayList<Provance> getProvance() {
        Connection conn = null;
        Statement stm = null;
        
        ArrayList<Provance> listProvance = new ArrayList<Provance>();

        try {
            //Get connection
            conn = DataAccessObject.startConnection();
            // Execute SQL query
           String sql = "SELECT * FROM PROVANCE";

            //PreparedStatement stmt = conn.createStatement();
            stm = conn.createStatement();
            
            ResultSet rs = stm.executeQuery(sql);
            System.out.println("result set correct");
            // Extract data from result set
            while (rs.next()) {
                //Retrieve by column name
                int pid = rs.getInt("PROVANCE_ID");
                String pname = rs.getString("PROVANCE_NAME");
                int cid = rs.getInt("COUNTRY_ID");
                //Put in the array list
                listProvance.add(new Provance(pid, pname, cid));

            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        DataAccessObject.endConection(conn);
        return listProvance;
    }

}
