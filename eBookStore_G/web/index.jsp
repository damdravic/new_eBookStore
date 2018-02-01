<%-- 
    Document   : newjspindex.jsp
    Created on : Jan 22, 2018, 8:22:21 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eBookStore</title>
        <link href="css/eBooksStore.css" rel="stylesheet" >
    </head>
    <body>
        <div class="container">
        <h1>Welcome to Electronic Books Store</h1> 
        <div class="login">
            
    <form action="${pageContext.request.contextPath}/Authentication" methode="POST">        
        <table class="tablecenterdwithborder">
              <tr>
                <td><h2> Login </h2> </td><td></td>
            </tr> 
            <tr>
                <td>  Username : </td><td><input class="inputlarge" type="text" name="user"></td>
            </tr>  
             <tr>
                 <td>  Password : </td><td><input class="inputlarge" type="password" name="pass"></td>
            </tr>  
            <tr>
                <td></td>
                <td class="right"><input class="btn" type="submit" name="submit" value="Login"></td >
            </tr>
        </table>
    </form>
        </div>
        </div>
       
    </body>
</html>
