/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dragos
 */
public class UserManage extends HttpServlet {

    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
            response.setContentType("text/html;charset=UTF-8");
            // declare specific DB info
            
            // check push on Insert button
            if (request.getParameter("admin_users_insert") != null) { // insert values from fields
                // set connection paramters to the DB
                // read values from page fields
                
                String ssn = request.getParameter("admin_users_ssn");
                String username = request.getParameter("admin_users_username");
                String user_password = request.getParameter("admin_users_password");
                String role = request.getParameter("admin_user_role");
                //String customer = request.getParameter("admin_user_customer");
                // declare specific DBMS operationsvariables
                
                ResultSet resultSet = null;
                Statement statement = null;
                Connection connection = null;
                PreparedStatement pstmnt = null;
                try
                { 
                    //check driver and create connection
                    connection = DbConnection.getConnection();
                    
                    String DML = "INSERT INTO DRAGOS.USERS VALUES (?, ?, ?, ?)";
                    pstmnt = connection.prepareStatement(DML);
                    pstmnt.setString(1, ssn);
                    pstmnt.setString(2, username);
                    pstmnt.setString(3, user_password);
                    pstmnt.setString(4, role);
                    pstmnt.execute();
                }
                catch (SQLException ex)
                {
                    // display a message for NOT OK
                    Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);
                }
                finally
                {
                    if (resultSet != null)
                    {
                        try
                        {
                            resultSet.close();
                        }
                        catch (SQLException ex){Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);}
                    }
                    if (statement != null)
                    {
                        try
                        {
                            statement.close();
                        }
                        catch (SQLException ex){Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);}
                    }
                    if (pstmnt != null)
                    {
                        try
                        {
                            pstmnt.close();
                        }
                        catch (SQLException ex){Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);}
                    }
                    if (connection != null)
                    {
                        try
                        {
                            connection.close();
                        }
                        catch (SQLException ex){Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);}
                    }
                    // redirect page to its JSP as view
                    request.getRequestDispatcher("eBookUsers.jsp").forward(request, response);
                }
            }  // check push on Update button
            else if (request.getParameter("admin_users_update") != null){ // update
                // declare specific variables
                
                ResultSet resultSet = null;
                Statement statement = null;
                PreparedStatement pstmnt = null;
                Connection connection = null;
                try
                { 
                    //check driver and create connection
                    
                    connection = DbConnection.getConnection();
                    
                    // identify selected checkbox and for each execute the update operation
                    String s = request.getParameter("admin_users_checkbox");
                    String username = request.getParameter("admin_users_username");
                    String ssn1 = request.getParameter("admin_users_ssn");
                    String user_password = request.getParameter("admin_users_password");
                    String role = request.getParameter("admin_user_role");
                    // if both username and password are "" do nothing
                    if(!(("".equals(username)) && ("".equals(user_password)))){
                        // operate updates for all selected rows
                       
                            // realize update of all selected rows
                            String ssn = s;
                            if("".equals(username)){ // only password/s should be updated
                                String DML = "UPDATE DRAGOS.USERS SET CNP=?, PASSWORD=?, ROLE=? WHERE CNP=?";
                                pstmnt = connection.prepareStatement(DML);
                                pstmnt.setString(1, ssn);
                                pstmnt.setString(2, user_password);
                                pstmnt.setString(3, role);
                                pstmnt.setString(4, ssn);
                            }
                            else if("".equals(user_password)){// only username should be updated
                                String DML = "UPDATE DRAGOS.USERS SET CNP=?, NAME=?, ROLE=? WHERE CNP=?";
                                pstmnt = connection.prepareStatement(DML);
                                pstmnt.setString(1, ssn);
                                pstmnt.setString(2, username);
                                pstmnt.setString(3, role);
                                pstmnt.setString(4, ssn);
                            }else{
                                String DML = "UPDATE DRAGOS.USERS SET CNP=?, NAME=?, PASSWORD=?, ROLE=? WHERE CNP=?";
                                pstmnt = connection.prepareStatement(DML);
                                pstmnt.setString(1, ssn1);
                                pstmnt.setString(2, username);
                                pstmnt.setString(3, user_password);
                                pstmnt.setString(4, role);
                                pstmnt.setString(5, ssn);
                            }
                            boolean execute = pstmnt.execute();
                        
                    }else{ // update one or more roles for one or more users
                      
                            // realize update of all selected rows
                            String ssn = s;
                            String DML = "UPDATE DRAGOS.USERS SET role=? WHERE CNP=?";
                            pstmnt = connection.prepareStatement(DML);
                            pstmnt.setString(1, role);
                            pstmnt.setString(2, ssn);
                            boolean execute = pstmnt.execute();
                                        
                    }
                }
                catch (SQLException ex)
                {
                    // display a message for NOT OK
                    Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);

                }
                finally
                {
                    if (resultSet != null)
                    {
                        try
                        {
                            resultSet.close();
                        }
                        catch (SQLException ex){Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);}
                    }
                    if (pstmnt != null)
                    {
                        try
                        {
                            pstmnt.close();
                        }
                        catch (SQLException ex){Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);}
                    }	
                    if (connection != null)
                    {
                        try
                        {
                            connection.close();
                        }
                        catch (SQLException ex){Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);}
                    }
                    // redirect page to its JSP as view
                    request.getRequestDispatcher("./eBookUsers.jsp").forward(request, response);
                }
            } // check push on Delete button
            else if (request.getParameter("admin_users_delete") != null) { // delete 
                // declare specific variables
                ResultSet resultSet = null;
                PreparedStatement pstmnt = null;
                Connection connection = null;
                try
                {
                    //check driver and create connection
                   connection = DbConnection.getConnection();
                   
                    // identify selected checkbox and for each execute the delete operation
                    String[] selectedCheckboxes = request.getParameterValues("admin_users_checkbox");
                    // more critical DB operations should be made into a transaction
                    connection.setAutoCommit(false);
                    for(String s : selectedCheckboxes){
                        // realize delete of all selected rows
                        String ssn = s;
                        String DML = "DELETE FROM DRAGOS.USERS WHERE CNP=?";
                        pstmnt = connection.prepareStatement(DML);
                        pstmnt.setString(1, ssn);
                        pstmnt.execute();
                    }
                    connection.commit();
                    connection.setAutoCommit(true);
                }
                catch (SQLException ex)
                {
                    Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);
                    if (connection != null){
                        try {
                            connection.rollback();
                        } catch (SQLException ex1) {
                            Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex1);
                        }
                    }
                }              
                finally
                {
                    if (resultSet != null)
                    {
                        try
                        {
                            resultSet.close();
                        }
                        catch (SQLException ex){
                            Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                    if (pstmnt != null)
                    {
                        try
                        {
                            pstmnt.close();
                        }
                        catch (SQLException ex){
                            Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                    if (pstmnt != null)
                    {
                        try
                        {
                            pstmnt.close();
                        }
                        catch (SQLException ex){
                            Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                    if (connection != null){
                        try
                        {
                            connection.setAutoCommit(true);
                        }
                        catch (SQLException ex){                          
                            Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);
                        }
                        finally{
                            try {
                                connection.close();
                            } catch (SQLException ex) {
                                Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);
                            }
                        }
                    }
                    // redirect page to its JSP as view
                    request.getRequestDispatcher("./eBookUsers.jsp").forward(request, response);
                }
            } // check push on Cancel button
            else if (request.getParameter("admin_users_cancel") != null){ // cancel
                request.getRequestDispatcher("./eBookMainPage.jsp").forward(request, response);
            } // check push on admin user roles button
            else if (request.getParameter("admin_userroles_open") != null) { // insert values from fields
                request.getRequestDispatcher("./eBookMainPage.jsp.jsp").forward(request, response);
            } // check push on admin customers button
    }




    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UserManage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
