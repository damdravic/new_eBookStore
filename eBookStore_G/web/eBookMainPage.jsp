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
      <form action="${pageContext.request.contextPath}/eBooksStoreAdminUsersServlet" method="POST">  
         <sql:setDataSource
                            var = "snapshot" 
                            driver = "org.apache.derby.jdbc.ClientDriver"
                            url = "jdbc:derby://localhost:1527/eBookStore_G"
                            user = "Dragos"  
                            password = "3122"/> 
        
        
        <div class="contentt">
            
            <sql:query dataSource="${sn>apshot}" var="result">
                            SELECT ISBN, TITLE, BOOK_TYPE_ID, PAGES, GENRE_ID, PRICE, STOCK, LAST_SUPPLY_DATE FROM DRAGOS.EBOOKS
                        </sql:query>
                        <table class="ebooktable">
                            
                            <tr> 
                            <th width="12%" class="thc"> TITLE </th>    
                            <th width="12%" class="thc"> ISBN </th>   
                            <th width="12%" class="thc">BOOK TYPE_ID</th>
                            <th width="12%" class="thc">PAGES</th>
                            <th width="12%" class="thc">GENRE_ID</th>
                            <th width="12%" class="thc">PRICE</th>
                                <!-- options for admin only -->
                                    <c:choose>
                                        <c:when test="${actualUserRole == 'admin'}">
                                           <th width="10%" class="thc">STOCK</th>
                                           <th width="10%" class="thc">LAST SUPPLY</th>
                                           <th width="8%" class="thc"> select </th>
                                        </c:when>
                                    </c:choose>
                             </tr>
                        </table>  
                            
                        <table class="ebooktable">  
                            <c:forEach var="row" varStatus="loop" items="${result.rows}">
                            <tr>
                                <td width="12%" class="tdc"><c:out value="${row.TITLE}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.ISBN}"/></td>   
                                <td width="12%" class="tdc"><c:out value="${row.BOOK_TYPE_ID}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.PAGES}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.GENRE_ID}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.PRICE}"/></td>
                                      <!-- options for admin only -->
                                 <c:choose>
                                    <c:when test="${actualUserRole == 'admin'}">
                                        <td width="10%" class="tdc"><c:out value="${row.STOCK}"/></td>
                                        <td width="10%" class="tdc"><c:out value="${row.LAST_SUPPLY_DATE}"/></td>
                                        <td width="8%" class="tdc"><input type="checkbox" name="admin_users_checkbox" value="${row.ISBN}"></td>
                                    </c:when>
                                </c:choose>
                            </tr>
                            </c:forEach>
                        </table>
                           
                            
                 <%-- Details --%>
                        <sql:setDataSource 
                        var="snapshotgenres" 
                        driver="org.apache.derby.jdbc.ClientDriver"
                        url="jdbc:derby://localhost:1527/eBookStore_G"
                        user="Dragos"  
                        password="3122"/>
                        <sql:query dataSource="${snapshotgenres}" var="resultgenres">
                            SELECT GENRE_ID, GENRE FROM DRAGOS.BOOK_GENRES 
                        </sql:query>
                            
                        <%--    
                        <sql:setDataSource 
                        var="snapshotpaperqualities" 
                        driver="org.apache.derby.jdbc.ClientDriver"
                        url="jdbc:derby://localhost:1527/eBookStore_G"
                        user="Dragos"  
                        password="3122"/>
                        <sql:query dataSource="${snapshotpaperqualities}" var="resultpaperqualities">
                            SELECT ID, QUALITY FROM DRAGOS.BOOK_PAPER_QUALITIES 
                        </sql:query>    
                        --%>    
                            
                        <sql:setDataSource 
                        var="snapshottypes" 
                        driver="org.apache.derby.jdbc.ClientDriver"
                        url="jdbc:derby://localhost:1527/eBookStore_G"
                        user="Dragos"  
                        password="3122"/>
                        <sql:query dataSource="${snapshottypes}" var="resulttypes">
                            SELECT TYPE_ID, BOOK_TYPE FROM DRAGOS.BOOK_TYPES 
                        </sql:query>    
                        <table class="tablecenterdwithborder">
                            <tr>
                                <td>    
                                    <table>
                                        <tr>
                                            <td> ISBN: </td>
                                            <td> <input type="text" name="admin_ebooks_isbn"></input></td>
                                        </tr>                                        
                                        <tr>
                                            <td> DENUMIRE: </td>
                                            <td> <input type="text" name="admin_ebooks_denumire"></input></td>
                                        </tr>
                                        <tr>
                                            <td> PAGES NO: </td>
                                            <td> <input type="text" name="admin_ebooks_pages"></input></td>
                                        </tr>
                                        <tr>
                                            <td> PRICE: </td>
                                            <td> <input type="text" name="admin_ebooks_price"></input></td>
                                        </tr>
                                        <tr>
                                            <td> ID_TYPE: </td>
                                            <td>
                                                <select name="admin_ebooks_id_type" required="true">
                                                    <c:forEach var="rowtype" items="${resulttypes.rows}">    
                                                        <option name="admin_ebooks_types" value="${rowtype.TYEP_ID} / ${rowtype.BOOK_TYPE}">${rowtype.TYPE_ID} / ${rowtype.BOOK_TYPE}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td> ID_PAPER_QUALITY: </td>
                                            <td>
                                                <select name="admin_ebooks_id_paper_qualities" required="true">
                                                    <c:forEach var="rowquality" items="${resultpaperqualities.rows}">    
                                                        <option name="admin_ebooks_paper_qualities" value="${rowquality.ID}|${rowquality.quality}">${rowquality.ID}|${rowquality.quality}</option>
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
                                    <table>

                                            <tr><td class="tdc"><input type="submit" class="ebooksstorebutton" name="admin_ebooks_insert" value="Insert"></td> 
                                                <td class="tdc"><input type="submit" class="ebooksstorebutton" name="admin_ebooks_update" value="Update"></td>
                                                <td class="tdc"><input type="submit" class="ebooksstorebutton" name="admin_ebooks_delete" value="Delete"></td> 
                                                <td class="tdc"><input type="submit" class="ebooksstorebutton" name="admin_ebooks_cancel" value="Cancel"></td>
                                            </tr>  
                                    </table>
                                </td>
                            </tr>
                        </table>    
                        </form>   
            </c:when>
            <c:otherwise>
                <c:redirect url="./Index.jsp"></c:redirect>
            </c:otherwise>
        </c:choose>
   </form>            
                            
            
            
       
        </div>
       </div>

       
  
    </body>
</html>
