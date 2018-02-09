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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dragos
 */
@WebServlet(name = "eBookDeleteServlet", urlPatterns = {"/eBookDeleteServlet"})
public class eBookDeleteServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        
      if (request.getParameter("submit_changes") != null) { // insert values from fields
                // set connection paramters to the DB
                // read values from page fields
                PreparedStatement pstmnt = null;
                ResultSet resultSet = null;
                Statement statement = null;
                Connection connection = null;
                
                String isbn = request.getParameter("book_isbn");

                try
                { 
                    
                 
                    //check driver and create connection
                    connection = DbConnection.getConnection();
                    
                    String DML = "DELETE FROM DRAGOS.EBOOKS WHERE ISBN = ?";
                    pstmnt = connection.prepareStatement(DML);
                   
                    pstmnt.setString(1, isbn);
                    
                   
                    
                    
                
                    pstmnt.execute();
                }
                catch (SQLException ex)
                {
                    // display a message for NOT OK
                    Logger.getLogger(eBookAddNewServlet.class.getName()).log(Level.SEVERE, null, ex);
                     out.print(ex.getMessage());
                }
                finally
                {
                    if (resultSet != null)
                    {
                        try
                        {
                            resultSet.close();
                        }
                        catch (SQLException ex){Logger.getLogger(eBookAddNewServlet.class.getName()).log(Level.SEVERE, null, ex);
                        out.print("Something is wrong 1");}
                    }
                    if (statement != null)
                    {
                        try
                        {
                            statement.close();
                        }
                        catch (SQLException ex){Logger.getLogger(eBookAddNewServlet.class.getName()).log(Level.SEVERE, null, ex);
                        out.print("Something is wrong 2");}
                    }
                    if (pstmnt != null)
                    {
                        try
                        {
                            pstmnt.close();
                        }
                        catch (SQLException ex){Logger.getLogger(eBookAddNewServlet.class.getName()).log(Level.SEVERE, null, ex);
                        out.print("Something is wrong 3");}
                    }
                    if (connection != null)
                    {
                        try
                        {
                            connection.close();
                        }
                        catch (SQLException ex){Logger.getLogger(eBookAddNewServlet.class.getName()).log(Level.SEVERE, null, ex);
                        out.print("Something is wrong 4");}
                    }
                    // redirect page to its JSP as view
                    request.getRequestDispatcher("./eBookMainPage.jsp").forward(request, response);
                }   
}else if (request.getParameter("cancel") != null){
            request.getRequestDispatcher("./eBookMainPage.jsp").forward(request, response);
            
        }   
        
        
        
        
        
        
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
        processRequest(request, response);
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
        processRequest(request, response);
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
