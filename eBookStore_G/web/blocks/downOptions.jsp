<%-- 
    Document   : downOptions
    Created on : Feb 9, 2018, 10:06:08 AM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/menu.css" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
    </head>
    
        <body>
        <ul id="nav">
            <c:choose>
            <c:when test="${actualUserRole == 'admin' && pageContext.request.servletPath == '/eBookMainPage.jsp'}">
                
                <input type="submit" value="Add new Book" name="add_new" />            
                <input type="submit" value="Delete sel. item"  name="delete_book"/>
                <input type="submit" value="Edit" name="edit_book"/>
                <input type="submit" value="Cancel" name="cancel"/>
            </c:when>
            <c:when test="${actualUserRole == 'user'}">
                <li><a href="#">Buy sel. Book</a> </li>    
                 <li><a href="#">Shopping cart</a></li>
            </c:when>
            <c:when test ="${actualUserRole == 'admin' && pageContext.request.servletPath == '/add_editBook.jsp'}">
                  <input type="submit" value="Submit" name="submit_changes" />  
                  <input type="submit" value="" name="cancel" /> 
                  <input type="submit" value="" name="cancel" />
                  <input type="submit" value="Cancel/ Back" name="cancel" />
                  
             </c:when>
          </c:choose>
        </ul>
       <script src="./js/script.js"></script>
    </body>
</html>