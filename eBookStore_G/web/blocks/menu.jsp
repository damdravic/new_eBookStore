<%-- 
    Document   : menu
    Created on : Jan 30, 2018, 10:22:00 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <c:when test="${actualUserRole == 'user'|| actualUserRole == 'admin'}">
                <li><a href="./eBookMainPage.jsp">Home</a> </li>    
            </c:when>
            </c:choose>
        <c:choose>
            <c:when test="${actualUserRole == 'admin'}">
                <c:choose>
                                    <c:when test ="${pageContext.request.servletPath == '/manageBooks.jsp'}">
                                <li><a href="./manageBooks.jsp">Add New Book</a></li>
                                    </c:when>
                                </c:choose>
                <li><a href="#">Manage</a>
                    <ul>
                        <c:choose>
                            <c:when test="${actualUserRole == 'admin'}">
                                <li><a href="./eBookUsers.jsp">Users</a></li>
                                <li><a href="./eBooksStoreAdminUserRolesPage.jsp">User roles</a></li>
                                <li><a href="./manageBooks.jsp">eBooks</a></li>
                            </c:when>
                        </c:choose>                              
                    </ul>
                </li>
            </c:when>
        </c:choose>        
        <c:choose>
            <c:when test="${actualUserRole == 'user'|| actualUserRole == 'admin'}">
                <li><a href="#">Orders</a>
                    <ul>
                        <%-- <li><a href="./eBooksStoreOrderBookPage.jsp">Orders</a></li> --%>
                        <%-- <li><a href="./eBooksStoreReportsPage.jsp">Orders</a></li> --%>
                        <li><a href="./eBooksStoreMainPage.jsp">Orders</a></li>
                    </ul>
                </li>    
            </c:when>
        </c:choose>                        
        <li><a href="./index.jsp">Log out</a></li>
        </ul>
       <script src="./js/script.js"></script>
    </body>
</html>
