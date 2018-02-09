<%-- 
    Document   : eBookUsers
    Created on : Feb 8, 2018, 10:12:54 PM
    Author     : Dragos
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Electronic Books Store Manage Users</title>
        <link rel="stylesheet" type="text/css" href=".\\css\\ebookstore.css">
         <link href="css/eBooksStore.css" rel="stylesheet">
        <link href="css/menu.css" rel="stylesheet">
    </head>
<body>
        <%-- test if actual user is authenticated and authorized --%>
        <c:choose>
                <c:when test="${validUser == true}">   
                    <!-- include menu -->
                   <div id="header">
            <div class="identificator">
            <%@ include file="blocks/identificator.jsp" %>
            </div>
            
            
            <div class="navigator">
             <%@ include file="blocks/menu.jsp" %>
            </div>
            
            
            
            </div>  
             <div class="contentt"> 
                    <%-- Master view --%>
                       
                        <form action="${pageContext.request.contextPath}/UserManage" method="POST">
                         <sql:setDataSource
                            var = "snapshot" 
                            driver = "org.apache.derby.jdbc.ClientDriver"
                            url = "jdbc:derby://localhost:1527/eBookStore_G"
                            user = "Dragos"  
                            password = "3122"/> 
                        
                        <sql:query dataSource="${snapshot}" var="result">
                            SELECT * FROM DRAGOS.USERS
                        </sql:query>
                           
                        <table class="ebooktable">
                            <tr>
                            <td width="4%" class="thc"> select </td>   
                            <td width="14%" class="thc"> SSN </td>  
                            <td width="14%" class="thc">NAME</td>
                            <td width="14%" class="thc">PASSWORD</td>
                            <td width="14%" class="thc">ROLE</td>
                        </table>    
                        <table class="ebooktable">    
                            </tr>
                            <c:forEach var="row" varStatus="loop" items="${result.rows}">
                            <tr>
                                <td width="4%" class="tdc"><input type="checkbox" name="admin_users_checkbox" value="${row.CNP}"></td>
                                <td width="14%" class="tdc"><c:out value="${row.CNP}"/></td>
                                <td width="14%" class="tdc"><c:out value="${row.NAME}"/></td>
                                <td width="14%" class="tdc"><c:out value="${row.PASSWORD}"/></td>
                                <td width="14%" class="tdc"><c:out value="${row.ROLE}"/></td>
                            </tr>
                            </c:forEach>
                        </table>
                        <%-- Details --%>
                        <sql:setDataSource
                            var = "snapshotroles" 
                            driver = "org.apache.derby.jdbc.ClientDriver"
                            url = "jdbc:derby://localhost:1527/eBookStore_G"
                            user = "Dragos"  
                            password = "3122"/> 
                        
                        <sql:query dataSource="${snapshotroles}" var="resultroles">
                            SELECT ROLE from DRAGOS.USERS 
                        </sql:query>
                            
                            
                         <div class="login">     
                        <table class="tablecenterdwithborder">
                            <tr>
                                <td>    
                                    <table>
                                        <tr>
                                            <td> SSN: </td>
                                            <td> <input type="text" class="inputlarge" name="admin_users_ssn"></input></td>
                                        </tr>                                        
                                        <tr>
                                            <td> NAME: </td>
                                            <td> <input type="text" class="inputlarge"  name="admin_users_username"></input></td>
                                        </tr>
                                        <tr>
                                            <td> PASSWORD: </td>
                                            <td> <input type="password" class="inputlarge" name="admin_users_password"></input></td>
                                        </tr>
                                        <tr>
                                            <td> ROLE: </td>
                                            <td>
                                                <select class="inputlarge" name="admin_user_role" required="true">
                                                    <c:forEach var="rowrole" items="${resultroles.rows}">    
                                                        <option name="admin_users_roles" value="${rowrole.role}">${rowrole.role}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>     
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    
                                    <table>

                                            <tr><td class="tdc"><input type="submit" class="ebooksstorebutton" name="admin_users_insert" value="Insert"></td> 
                                                <td class="tdc"><input type="submit" class="ebooksstorebutton" name="admin_users_update" value="Update"></td>
                                                <td class="tdc"><input type="submit" class="ebooksstorebutton" name="admin_users_delete" value="Delete"></td> 
                                                <td class="tdc"><input type="submit" class="ebooksstorebutton" name="admin_users_cancel" value="Cancel"></td>
                                            </tr>  
                                    </table>
                                </td>
                            </tr>
                        </table> 
                               </div>
                     </form>  
            </c:when>
            <c:otherwise>
                <c:redirect url="./index.jsp"></c:redirect>
            </c:otherwise>
        </c:choose>
      
                      
                 
</div>
</body>    
</html>