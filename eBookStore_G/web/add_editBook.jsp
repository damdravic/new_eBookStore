<%-- 
    Document   : add_editBook
    Created on : Feb 9, 2018, 10:43:47 AM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href="css/eBooksStore.css" rel="stylesheet" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
        
        <title>JSP Page</title>
    </head>
    <body>
                <div class="container">
        <h1>Electronic Books Store</h1> 
        <div class="login">                   
                 <%-- Details --%>
                 
                
                  <c:if test="${param.admin_users_checkbox != null && param.edit_book != null}"> 
                      
                   <form action="${pageContext.request.contextPath}/eBookEditServlet" method="POST">   
                      
                    <c:set var = "myparameter" value = "${param.admin_users_checkbox }" />     
                      <sql:setDataSource 
                        var="snapshot" 
                        driver="org.apache.derby.jdbc.ClientDriver"
                        url="jdbc:derby://localhost:1527/eBookStore_G"
                        user="Dragos"  
                        password="3122"/>
                        
                      <sql:query dataSource="${snapshot}" var="result">
                            SELECT * FROM DRAGOS.EBOOKS where ISBN = ?
                            <sql:param value = '${myparameter}' />
                       </sql:query>  
                            
                       <sql:query dataSource="${snapshot}" var="resultgenres">
                            SELECT GENRE_ID, GENRE FROM DRAGOS.BOOK_GENRES 
                        </sql:query>
                            
                        <sql:query dataSource="${snapshot}" var="resulttypes">
                            SELECT TYPE_ID, BOOK_TYPE FROM DRAGOS.BOOK_TYPES
                        </sql:query>
                            
                            
                     <c:forEach var = "row" items = "${result.rows}">
                       <table class="tablecenterdwithborder">
                           <tr><td colspan="2"> <h4> You are going to EDIT this book </h4> <td></tr>
                         <tr>
                                <td>    
                                    <table>
                                        <tr>
                                            <td> ISBN: </td>
                                            <td>  <input class="inputlarge" type="text" name="book_isbn" value="${row.ISBN}"></td>
                                        </tr>                                        
                                        <tr>
                                            <td> TITLE: </td>
                                            <td> <input class="inputlarge" type="text" name="book_title" value="${row.TITLE}"></td>
                                        </tr>
                                        <tr>
                                            <td> AUTHOR: </td>
                                            <td> <input class="inputlarge" type="text" name="book_authore" value="${row.AUTHOR}"></td>
                                        </tr>
                                        <tr>
                                            <td> PAGES NO: </td>
                                            <td> <input class="inputlarge" type="text" name="book_pages" value="${row.PAGES}"></td>
                                        </tr>
                                        <tr>
                                            <td> PRICE: </td>
                                            <td> <input class="inputlarge" type="text" name="book_price" value="${row.PRICE}"></td>
                                        </tr>
                                         <tr>
                                            <td> STOCK: </td>
                                            <td> <input class="inputlarge" type="text" name="book_stock" value="${row.STOCK}"></td>
                                        </tr>
                                         <tr>
                                            <td> LAST SUPPLY: </td>
                                            <td> <input class="inputlarge" type="text" name="book_supply" value="${row.LAST_SUPPLY_DATE}"></td>
                                        </tr>
                                        <tr>
                                            <td> ID_TYPE: </td>
                                            <td>
                                                <select class="inputlarge" name="book_type" required="true">
                                                    <c:forEach var="rowtype" items="${resulttypes.rows}">    
                                                        <option  name="admin_ebooks_types" value="${rowtype.TYPE_ID}">${rowtype.TYPE_ID} / ${rowtype.BOOK_TYPE}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>
             
                                        <tr>
                                            <td> ID_GENRE: </td>
                                            <td>
                                                <select name="book_genre" required="true">
                                                    <c:forEach var="rowgenre" items="${resultgenres.rows}">    
                                                        <option name="admin_ebooks_genres" value="${rowgenre.GENRE_ID}">${rowgenre.GENRE_ID} / ${rowgenre.GENRE}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>
   
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%-- buttons --%>
                                   <%@ include file="blocks/downOptions.jsp" %>
                                </td>
                            </tr>
                       </table> 
                     
                     </c:forEach>   
                   </form>
                  </c:if> 
                 
                            
 <%-- ADD NEW BOOK  --%>                           
                            
                            
        <c:if test="${ param.add_new != null}"> 
        <form action="${pageContext.request.contextPath}/eBookAddNewServlet" method="POST">             
                      <sql:setDataSource 
                        var="snapshot" 
                        driver="org.apache.derby.jdbc.ClientDriver"
                        url="jdbc:derby://localhost:1527/eBookStore_G"
                        user="Dragos"  
                        password="3122"/>
                        
                    
                            
                       <sql:query dataSource="${snapshot}" var="resultgenres">
                            SELECT GENRE_ID, GENRE FROM DRAGOS.BOOK_GENRES 
                        </sql:query>
                            
                        <sql:query dataSource="${snapshot}" var="resulttypes">
                            SELECT TYPE_ID, BOOK_TYPE FROM DRAGOS.BOOK_TYPES
                        </sql:query>
                            
                     
                     
                       <table class="tablecenterdwithborder">
                           <tr><td colspan="2"> <h4> You are going to Add new Book </h4> <td></tr>
                         <tr>
                                <td>    
                                    <table>
                                        <tr>
                                            <td> ISBN: </td>
                                            <td>  <input class="inputlarge" type="text" name="book_isbn" ></td>
                                        </tr>                                        
                                        <tr>
                                            <td> TITLE: </td>
                                            <td> <input class="inputlarge" type="text" name="book_title"></td>
                                        </tr>
                                        <tr>
                                            <td> AUTHOR: </td>
                                            <td> <input class="inputlarge" type="text" name="book_authore"></td>
                                        </tr>
                                        <tr>
                                            <td> PAGES NO: </td>
                                            <td> <input class="inputlarge" type="text" name="book_pages" ></td>
                                        </tr>
                                        <tr>
                                            <td> PRICE: </td>
                                            <td> <input class="inputlarge" type="text" name="book_price"></td>
                                        </tr>
                                         <tr>
                                            <td> STOCK: </td>
                                            <td> <input class="inputlarge" type="text" name="book_stock"></td>
                                        </tr>
                                        
                                        <tr>
                                            <td> ID_TYPE: </td>
                                            <td>
                                                <select class="inputlarge" name="book_type" required="true">
                                                    <c:forEach var="rowtype" items="${resulttypes.rows}">    
                                                        <option  name="admin_ebooks_types" value="${rowtype.TYPE_ID}">${rowtype.TYPE_ID} / ${rowtype.BOOK_TYPE}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>
             
                                        <tr>
                                            <td> ID_GENRE: </td>
                                            <td>
                                                <select class="inputlarge" name="book_genre" required="true">
                                                    <c:forEach var="rowgenre" items="${resultgenres.rows}">    
                                                        <option name="admin_ebooks_genres" value="${rowgenre.GENRE_ID}">${rowgenre.GENRE_ID} / ${rowgenre.GENRE}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>
   
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%-- buttons --%>
                                   <%@ include file="blocks/downOptions.jsp" %>
                                </td>
                            </tr>
                       </table> 
                     </form>
                  </c:if>                     
                            
          
  <%-- DELETE  --%> 
                  <c:if test="${param.admin_users_checkbox != null && param.delete_book != null}"> 
                       <form action="${pageContext.request.contextPath}/eBookDeleteServlet" method="POST">
                    <c:set var = "myparameter" value = "${param.admin_users_checkbox }" />     
                      <sql:setDataSource 
                        var="snapshot" 
                        driver="org.apache.derby.jdbc.ClientDriver"
                        url="jdbc:derby://localhost:1527/eBookStore_G"
                        user="Dragos"  
                        password="3122"/>
                        
                      <sql:query dataSource="${snapshot}" var="result">
                            SELECT * FROM DRAGOS.EBOOKS where ISBN = ?
                            <sql:param value = '${myparameter}' />
                       </sql:query>  
                            
                       <sql:query dataSource="${snapshot}" var="resultgenres">
                            SELECT GENRE_ID, GENRE FROM DRAGOS.BOOK_GENRES 
                        </sql:query>
                            
                        <sql:query dataSource="${snapshot}" var="resulttypes">
                            SELECT TYPE_ID, BOOK_TYPE FROM DRAGOS.BOOK_TYPES
                        </sql:query>
                            
                            
                     <c:forEach var = "row" items = "${result.rows}">
                       <table class="tablecenterdwithborder">
                           <tr><td colspan="2"> <h4> You are going to DELETE this book </h4> <td></tr>
                         <tr>
                                <td>    
                                    <table>
                                        <tr>
                                            <td> ISBN: </td>
                                            <td>  <input class="inputlarge" type="text" name="book_isbn" value="${row.ISBN}"></td>
                                        </tr>                                        
                                        <tr>
                                            <td> DENUMIRE: </td>
                                            <td> <input class="inputlarge" type="text" name="admin_ebooks_denumire" value="${row.TITLE}"></td>
                                        </tr>
                                        <tr>
                                            <td> PAGES NO: </td>
                                            <td> <input class="inputlarge" type="text" name="admin_ebooks_pages" value="${row.PAGES}"></td>
                                        </tr>
                                        <tr>
                                            <td> PRICE: </td>
                                            <td> <input class="inputlarge" type="text" name="admin_ebooks_price" value="${row.PRICE}"></td>
                                        </tr>
                                         <tr>
                                            <td> STOCK: </td>
                                            <td> <input class="inputlarge" type="text" name="admin_ebooks_price" value="${row.STOCK}"></td>
                                        </tr>
                                         <tr>
                                            <td> LAST SUPPLY: </td>
                                            <td> <input class="inputlarge" type="text" name="admin_ebooks_price" value="${row.LAST_SUPPLY_DATE}"></td>
                                        </tr>
                                        <tr>
                                            <td> ID_TYPE: </td>
                                            <td>
                                                <select class="inputlarge" name="admin_ebooks_id_type" required="true">
                                                    <c:forEach var="rowtype" items="${resulttypes.rows}">    
                                                        <option  name="admin_ebooks_types" value="${rowtype.TYEP_ID} / ${rowtype.BOOK_TYPE}">${rowtype.TYPE_ID} / ${rowtype.BOOK_TYPE}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>
             
                                        <tr>
                                            <td> ID_GENRE: </td>
                                            <td>
                                                <select name="admin_ebooks_id_genres" required="true">
                                                    <c:forEach var="rowgenre" items="${resultgenres.rows}">    
                                                        <option name="admin_ebooks_genres" value="${rowgenre.GENRE_ID} / ${rowgenre.GENRE}">${rowgenre.GENRE_ID} / ${rowgenre.GENRE}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>
   
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%-- buttons --%>
                                   <%@ include file="blocks/downOptions.jsp" %>
                                </td>
                            </tr>
                       </table> 
          
                     </c:forEach>   
                  </c:if>      
                            
                            
                            
                            
                            
                      <c:if test="${(param.admin_users_checkbox == null && param.edit_book != null) || (param.admin_users_checkbox == null && param.delete_book != null) || (param.cancel != null)  }">       
                        <table class="tablecenterdwithborder">
                           <tr><td colspan="2"> <h4>You did not check CheckBox </h4> <td></tr>
                           <tr><td colspan="2"> <h6>You will be redirect in 5 seconds... </h6> <td></tr>
                            <tr>
                                <td>
                                    <%-- buttons --%>
                                    <meta http-equiv="refresh" content="3; url=eBookMainPage.jsp" />
                                    
                                </td>
                            </tr>
   
                        </table>       
                      </c:if>
                      
        </div>
                </div>
    </body>
</html>
