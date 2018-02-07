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
       <div class="content">
        <h1> eBookStore </h1>
        <div id="header">
            <div class="identificator">
                    <c:choose>
            <c:when test="${validUser == true}">
            <%@ include file="blocks/identificator.jsp" %>
            </c:when>
            </c:choose>
            </div>
            
            <div class="navigator">
            <c:choose>
            <c:when test="${validUser == true}"> <%-- if a valid user is logged than display page --%>
                <%@ include file="blocks/menu.jsp" %>
            </c:when>
                
            <c:otherwise> <%-- if no valid user than open Authentication and authorization that is index.jsp  page --%>
                <c:redirect url="index.jsp"></c:redirect>
            </c:otherwise>
            </c:choose>
            </div>
            </div>  
       
         <ddv:connectionTagHandler
                            connection = "snapshot" 
                            driver = "org.apache.derby.jdbc.ClientDriver"
                            url = "jdbc:derby://localhost:1527/eBookStore_G"
                            username = "Dragos"  
                            password = "3122"/> 
        
        
        <div class="contentt">
            
            <sql:query dataSource="${snapshot}" var="result">
                            SELECT ISBN, TITLE, BOOK_TYPE_ID, PAGES, GENRE_ID, PRICE, STOCK, LAST_SUPPLY_DATE FROM EBOOKS.EBOOKS
                        </sql:query>
                        <table border="1" width="100%">
                            <tr>
                            <td width="4%" class="thc"> select </td>   
                            <td width="12%" class="thc"> ISBN </td>  
                            <td width="12%" class="thc">DENUMIRE</td>
                            <td width="12%" class="thc">ID_TYPE</td>
                            <td width="12%" class="thc">ID_QUALITY</td>
                            <td width="12%" class="thc">PAGES</td>
                            <td width="12%" class="thc">ID_GENRE</td>
                            <td width="12%" class="thc">PRET</td>
                            <td width="12%" class="thc">PRET</td>
                        </table>    
                        <table border="1" width="100%">    
                            </tr>
                            <c:forEach var="row" varStatus="loop" items="${result.rows}">
                            <tr>
                                <td width="4%" class="tdc"><input type="checkbox" name="admin_users_checkbox" value="${row.ISBN}"></td>
                                <td width="12%" class="tdc"><c:out value="${row.ISBN}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.TITLE}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.BOOK_TYPE_ID}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.PAGES}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.GENRE_ID}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.PRICE}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.STOCK}"/></td>
                                <td width="12%" class="tdc"><c:out value="${row.LAST_SUPPLY_DATE}"/></td>
                            </tr>
                            </c:forEach>
</table>
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
           <table class="ebooktable">
              <tr>
                <th>Id</th>
                <th>Book Title</th>
                <th>ISBN</th>
                <th>Price</th>
              </tr>
              <tr>
                <td>1</td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>2</td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>3</td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>4</td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>5</td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>6</td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </table>
        </div>
       </div>

       
  
    </body>
</html>
