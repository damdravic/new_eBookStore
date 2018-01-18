<%-- 
    Document   : newjsp
    Created on : Jan 18, 2018, 9:43:27 PM
    Author     : Dragos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eBookStore</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link  href="css/bookcss.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">

        
        <link rel="stylesheet" href="css/jquery.bxslider.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="js/jquery.bxslider.min.js"></script>
        <script src="js/bootstrap.min.js" ></script>
        
    
<script>
  $(document).ready(function(){
    $('.slider').bxSlider({
   auto: true
});
  });
</script>

        
    </head>
    <body>
        <div id="header">
            <div id="header-top" class="container">
                <div class="row">
                    <div id="logo" class="col-sm-3 center">
                        <img src="images/logo.png" alt="">
                    </div>
                    <div id="minibanner" class="col-sm-6">
                        <img src="images/banner_2.png" alt="">
                        
                    </div>
                    <div class="col-sm-3  btn-group-vertical" >
                        
 <%--  login/register ///////////////////////////////////////////////////////////////////////////////////////  --%>                 
                        
                       
                    <a href="forms/login-register.jsp"   type="button" class="btn btn-default">Login or  Register </a>
                           
                          
                            
  <%--  login/register end div ///////////////////////////////////////////////////////////////////////////////////////  --%>                              
                            
                            
                     
                             <a href="index.jsp"   type="button" class="btn btn-default"> Back to shopping  </a>
                             <a href="admin/main_dashboard.jsp"   type="button" class="btn btn-default"> Admin Area  </a>
                              
                      
                        
                        <%-- search --%>
                    
                        
                                 <div class="search">
                                <input type="text" class="form-control input-sm" maxlength="75" placeholder="Search" />
                                <button type="submit" class="btn btn-default ">Search Book</button>
                                 </div>
                    
                     
                        
                        
                   
                </div>  
            </div> 
            <div id="header-bottom">
               
            </div>
         </div>
        </div>
      <div class="content">
            <div class="container">
    <div class="row col-md-11 custyle">
    <table class="table table-striped custab">
    <thead>
    
        <tr>
            <th>ID</th>
            <th>Book Title</th>
            <th>ISBN</th>
            <th>Quantity</th>
            <th>Price/pc</th>
            <th>Total Price</th>
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
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Change</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span>Remove</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Change</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span>Remove</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td>....</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Change</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span>Remove</a></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>  
                <td></td>
                <td class="text-center"><a><span></span></a> <a href="#" class="btn btn-danger btn-xs"><span class=""></span>/  BUY  /</a></td>
            </tr>
             
    </table>
 
        
    </div>
</div>
        </div>  
        <div class="footer" id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <h3>Books types</h3>
                        <ul>
                            <li> <a href="">e-Books</a> </li>
                            <li> <a href="">i-Boocs</a> </li>
                            <li> <a href="">Pdf</a> </li>
                            <li> <a href="">Printed</a> </li>
                        </ul>
                    </div>  
                     <div class="col-sm-3">
                        <h3>Books genre</h3>
                        <ul>
                            <li> <a href="">Science Fiction</a></li>
                            <li> <a href="">Drama </a></li>
                            <li> <a href="">Romance </a></li>
                            <li> <a href="">Mystery</a></li>
                            <li> <a href="">Science </a></li>
                            <li> <a href="">History </a></li>
                        </ul>
                    </div> 
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <h5>Copyright @ DDV eBookStore JAVA6.All right reserved.</h5>
                </div>
            </div>
        </div>
    
              
              
              
              
              
    </body>
</html>
