/*
 * create connection with JAVA DB server
 */
package servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dragos
 */
public class DbConnection {

    private static String baseurl = "jdbc:derby://localhost:1527/";
    private static String db ="eBookStore";
    private static String username = "Dragos";
    private static String password = "3122";
    
            
    private static String driver = "org.apache.derby.jdbc.EmbeddedDriver";
    private static Connection conn;

    public static Connection getConnection(){
                 try{
                     Class.forName(driver);
                     try{
                     conn = DriverManager.getConnection(baseurl + db,username,password) ;
                     System.out.println("You are connected to Database  ");
                     
                     }catch(SQLException ex){
                         System.out.println("Failed to connect to database !!!" + ex.getMessage());
                         
                         
                     }
                 } catch (ClassNotFoundException ex) {
            Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Driver not found");
        }

       return conn;



    }

        
    
    
    
}
