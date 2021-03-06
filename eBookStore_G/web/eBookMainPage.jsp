<%-- 
    Document   : eBookMainPage
    Created on : Jan 23, 2018, 5:04:31 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
     <%@ taglib uri="WEB-INF/tlds/myTags_Library.tld" prefix="ddv" %>
        <title>JSP Page</title>
        
        <link href="css/eBooksStore.css" rel="stylesheet">
        <link href="css/menu.css" rel="stylesheet">
        
    </head>
    <body>
       
            
            
            <c:choose>
        <c:when test="${validUser == true}"> <%-- if a valid user is logged than display page --%>
           
            
            <div class="content">
        <h1> eBookStore </h1>
        <div id="header">
            <div class="identificator">
            <%@ include file="blocks/identificator.jsp" %>
            </div>
            
            
            <div class="navigator">
             <%@ include file="blocks/menu.jsp" %>
            </div>
            
            
            
            </div>  
            
          <c:choose>
                <c:when test="${actualUserRole == 'admin'}">
                   <form action="${pageContext.request.contextPath}/add_editBook.jsp" method="POST">  
                </c:when>
                <c:when test="${actualUserRole == 'user'}">
                   <form action="${pageContext.request.contextPath}/Buy" method="POST">  
                </c:when>
            </c:choose>
         
         <sql:setDataSource
                            var = "snapshot" 
                            driver = "org.apache.derby.jdbc.ClientDriver"
                            url = "jdbc:derby://localhost:1527/eBookStore_G"
                            user = "Dragos"  
                            password = "3122"/> 
        
        
        <div class="contentt">
            
            <sql:query dataSource="${snapshot}" var="result">
                            SELECT EBOOKS.ISBN, EBOOKS.TITLE, EBOOKS.AUTHOR, EBOOKS.BOOK_TYPE_ID, EBOOKS.PAGES, EBOOKS.GENRE_ID, EBOOKS.PRICE, EBOOKS.STOCK, EBOOKS.LAST_SUPPLY_DATE, BOOK_TYPES.BOOK_TYPE, BOOK_GENRES.GENRE 
                            FROM DRAGOS.EBOOKS, DRAGOS.BOOK_TYPES,DRAGOS.BOOK_GENRES where EBOOKS.BOOK_TYPE_ID = BOOK_TYPES.TYPE_ID AND EBOOKS.GENRE_ID =  BOOK_GENRES.GENRE_ID
                        </sql:query>
                        <table class="ebooktable">
                            
                            <tr> 
                            <th width="12%" class="thc"> TITLE </th>    
                            <th width="12%" class="thc"> ISBN </th>  
                            <th width="10%" class="thc"> AUTHOR </th> 
                            <th width="10%" class="thc">BOOK TYPE_ID</th>
                            <th width="6%" class="thc">PAGES</th>
                            <th width="10%" class="thc">GENRE_ID</th>
                            <th width="6%" class="thc">PRICE</th>
                                <!-- options for admin only -->
                                    <c:choose>
                                        <c:when test="${actualUserRole == 'admin'}">
                                           <th width="6%" class="thc">STOCK</th>
                                           <th width="10%" class="thc">LAST SUPPLY</th>
                                        </c:when>
                                    </c:choose>
                              <th width="8%" class="thc"> select </th>              
                             </tr>
                        </table>  
                            
                        <table class="ebooktable">  
                            <c:forEach var="row" varStatus="loop" items="${result.rows}">
                            <tr>
                                <td width="12%" class="tdc"><c:out value="${row.TITLE}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.ISBN}"/></td>  
                                 <td width="10%" class="tdc"><c:out value="${row.AUTHOR}"/></td>
                                <td width="10%" class="tdc"><c:out value="${row.BOOK_TYPE}"/></td>
                                <td width="6%" class="tdc"><c:out value="${row.PAGES}"/></td>
                                <td width="10%" class="tdc"><c:out value="${row.GENRE}"/></td>
                                <td width="6%" class="tdc"><c:out value="${row.PRICE}"/></td>
                                      <!-- options for admin only -->
                                 <c:choose>
                                    <c:when test="${actualUserRole == 'admin'}">
                                        <td width="6%" class="tdc"><c:out value="${row.STOCK}"/></td>
                                        <td width="10%" class="tdc"><c:out value="${row.LAST_SUPPLY_DATE}"/></td>
                                    </c:when>
                                </c:choose>
                                <td width="8%" class="tdc"><input type="checkbox" name="admin_users_checkbox" value="${row.ISBN}"></td>
                            </tr>
                            </c:forEach>
                        </table>
                            </div>
                          <div id="header">
                             <div class="navigator">
                             <%@ include file="blocks/downOptions.jsp" %>
                             </div>
                          </div>
                            
                           
  
                        </form>   
            </c:when>
            <c:otherwise>
                <c:redirect url="./Index.jsp"></c:redirect>
            </c:otherwise>
        </c:choose>
   </form>            
                            
            
            
       
        
       </div>

       
  
    </body>
</html>
