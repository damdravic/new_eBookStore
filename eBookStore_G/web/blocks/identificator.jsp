<%-- 
    Document   : identificator
    Created on : Feb 1, 2018, 1:27:23 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/identificator.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <ul id="identif">
          <c:choose>
            <c:when test="${actualUserRole == 'user'|| actualUserRole == 'admin'}">
                <li><a href="#">Welcome :  ${actualUser}   << ${actualUserRole} >></a>
                   
                </li>    
            </c:when>
        </c:choose> 
        </ul>
    </body>
</html>
