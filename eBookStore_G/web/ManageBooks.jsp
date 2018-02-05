<%-- 
    Document   : ManageBooks
    Created on : Feb 5, 2018, 12:57:54 PM
    Author     : Dragos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
       
        <div class="contentt">
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