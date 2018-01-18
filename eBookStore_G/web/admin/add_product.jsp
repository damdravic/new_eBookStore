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
                              <li><a href="../index.jsp"> WebPage </a></li>
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
        <div class="content">
            
            <div class="row">
    <div class="col-md-4 col-md-offset-4">
      <form class="form-horizontal" role="form">
        <fieldset>

          <!-- Form Name -->
          <legend>Add a Book</legend>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-3 control-label" for="textinput">Book Title</label>
            <div class="col-sm-9">
              <input type="text" placeholder="Book Title" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-3 control-label" for="textinput">Author</label>
            <div class="col-sm-9">
              <input type="text" placeholder="Author" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-3 control-label" for="textinput">ISBN</label>
            <div class="col-sm-9">
              <input type="text" placeholder="ISBN " class="form-control">
            </div>
          </div>
          
          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-3 control-label" for="textinput">Type</label>
            <div class="col-sm-9">
              <input type="text" placeholder="Type of book" class="form-control">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label" for="textinput">Genre</label>
            <div class="col-sm-9">
              <input type="text" placeholder="Genre" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Price</label>
            <div class="col-sm-4">
              <input type="text" placeholder="Price" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Pages</label>
            <div class="col-sm-4">
              <input type="text" placeholder="Nr of pages" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-3 control-label" for="textinput">Data entry</label>
            <div class="col-sm-9">
              <input type="text" placeholder="Date of initial stock entry" class="form-control">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label" for="textinput">Image</label>
            <div class="col-sm-9">
              <input type="text" placeholder="Image file name (placed in images folder)" class="form-control">
            </div>
          </div>
          
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                <button type="submit" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-primary">Save</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
            
            
            
            
            
            
        </div>

        
       
    </body>
</html>
