/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author Dragos
 */
public class Validator {
    
    static String name;
    static String password;
    static String role = "";
    static Boolean userExist = false;
  
    
    Validator(String name,String password) throws SQLException{
        this.name = name;
        this.password = password;  
        validate();
    }
    
     void validate() throws SQLException{
        try{
        Connection connection = DbConnection.getConnection();
        PreparedStatement ps = connection.prepareStatement
                             ("select * from USERS where NAME=? and PASSWORD=?");
         ps.setString(1, name);
         ps.setString(2, password);
         
         ResultSet rs =ps.executeQuery();
         userExist = rs.next();
         role = rs.getString("ROLE");
        }catch(SQLException e){
            e.printStackTrace();
        }
        
    }
            
    
    
}
