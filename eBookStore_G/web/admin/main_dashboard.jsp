<%-- 
    Document   : main_dashboard
    Created on : Jan 18, 2018, 5:23:30 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/admincss.css" rel="stylesheet">
        <script src="../js/bootstrap.min.js" ></script>
        
        <link rel="stylesheet" href="css/jquery.bxslider.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="js/jquery.bxslidermin.js"></script>
        <script src="js/bootstrap.min.js" ></script>
        
        
        
    </head>
    <body>
        <div id="header">
 <din class="container">
     <div class="row">
           <div class="col-md-2 profilbox">
                            <img src="../images/no-image.jpg" class="img-responsive">
                            <div class="profilname">Admin Name</div>
            </div>
             <div class="col-md-8">
                 <div class="container">
                         <div class="row navigator">
                             <div class="col-10">
                         <nav class="navbar navbar-inverse">
                          <div class="container-fluid">
                            <ul class="nav navbar-nav ">
                                <li><a href="../index.jsp"> Front End </a></li>
                              <li class=""><a href="main_dashboard.jsp">Dashboard</a></li>
                              <li><a href="add_product.jsp">Add Product </a></li>
                              <li><a href="#">Mesages</a></li>
                              <li><a href="users.jsp">Users</a></li>
                              <li><a href="orders.jsp">Orders</a></li>
                              
                            </ul>
                          </div>
                        </nav>
                             </div>
                     </div>
                     <div class="row">
                         <div class="container charts">
                             Some charts here
                         </div>
                     </div>
                     
                 </div>
             </div>
        </div>

 </div>
   
        
       
    </body>
</html>
