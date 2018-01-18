<%-- 
    Document   : orders
    Created on : Jan 18, 2018, 11:45:20 PM
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
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
        
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
                              <li><a href="#">Orders</a></li>
                              
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
       <div class="content">
            <div class="container">
    <div class="row col-md-12 custyle">
    <table class="table table-striped custab">
    <thead>
    
        <tr>
            <th>ID_Order</th>
            <th>Username</th>
            <th>E-mail</th>
            <th>Phone Nr</th>
            <th>Date-Submission</th>
            <th>Item-Nr</th>
            <th>TotalValue</th>
            <th>Status</th>
            <th>Date-Delivery</th>
            <th class="text-center">Action</th>
        </tr>
    </thead>
            <tr>
                <td>1</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a></td>
            </tr>
             
    </table>
 
        
    </div>
</div>
        </div>   
        
       
    </body>
</html>
