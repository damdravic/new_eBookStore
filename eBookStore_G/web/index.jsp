<%-- 
    Document   : index
    Created on : Jan 15, 2018, 11:15:20 PM
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
                            
                            
                     
                             <a href="cart.jsp"   type="button" class="btn btn-default"> Shopping Cart  </a>
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
        <div class="container">
            
            <%--   first row (slider) --%> 
            
            <div class="row" id="topcontainer">
                
                <div class="col-md-12">
                    
                       
                        <ul class="slider">
                          <li><img src="images/slide1.png" /></li>
                          <li><img src="images/slide2.png" /></li>

                        </ul>
                  
                    
                </div>
            </div>
            
            <%--   second row (left nemu and product table) --%> 
            
            <div class="row" id="middlecontainer">
                <div class="col-md-3" id="left-menu">
                    
                </div>
                <div class="col-md-9">
                    <din class="container">
                        <div class="row navigator" >                          
                   <nav class="navbar navbar-inverse">
                          <div class="container-fluid">
                            
                            <ul class="nav navbar-nav pull-right">
                              <li class=""><a href="#">Home</a></li>
                              <li><a href="#">Handbook</a></li>
                              <li><a href="#">Children's Books</a></li>
                              <li><a href="#">Contact</a></li>
                            </ul>
                          </div>
                        </nav>
                        </div> 


                        
                        <div class="row">
                            <%--   this will be changed with result of database query   --%> 
                        <div class="col-md-2 column pbox">
                            <img src="images/no-image.jpg" class="img-responsive">
                            <div class="ptitle">Product</div>
                            <div class="pprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="ptext">0.0 lei</div></div>
                        </div>
                        
                         <div class="col-md-2 column pbox">
                            <img src="images/no-image.jpg" class="img-responsive">
                            <div class="ptitle">Product</div>
                            <div class="pprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="ptext">0.0 lei</div></div>
                        </div>
                        
                        <div class="col-md-2 column pbox">
                            <img src="images/no-image.jpg" class="img-responsive">
                            <div class="ptitle">Product</div>
                            <div class="pprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="ptext">0.0 lei</div></div>
                        </div>
                        
                         <div class="col-md-2 column pbox">
                            <img src="images/no-image.jpg" class="img-responsive">
                            <div class="ptitle">Product</div>
                            <div class="pprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="ptext">0.0 lei</div></div>
                        </div>
                        
                         <div class="col-md-2 column pbox">
                            <img src="images/no-image.jpg" class="img-responsive">
                            <div class="ptitle">Product</div>
                            <div class="pprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="ptext">0.0 lei</div></div>
                        </div>
        
                        </div>    
                        <div class="row">
                            
                             <div class="col-md-2 column pbox">
                            <img src="images/no-image.jpg" class="img-responsive">
                            <div class="ptitle">Product</div>
                            <div class="pprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="ptext">0.0 lei</div></div>
                        </div>
                        
                         <div class="col-md-2 column pbox">
                            <img src="images/no-image.jpg" class="img-responsive">
                            <div class="ptitle">Product</div>
                            <div class="pprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="ptext">0.0 lei</div></div>
                        </div>
                        
                        <div class="col-md-2 column pbox">
                            <img src="images/no-image.jpg" class="img-responsive">
                            <div class="ptitle">Product</div>
                            <div class="pprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="ptext">0.0 lei</div></div>
                        </div>
                        
                         <div class="col-md-2 column pbox">
                            <img src="images/no-image.jpg" class="img-responsive">
                            <div class="ptitle">Product</div>
                            <div class="pprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="ptext">0.0 lei</div></div>
                        </div>
                        
                         <div class="col-md-2 column pbox">
                            <img src="images/no-image.jpg" class="img-responsive">
                            <div class="ptitle">Product</div>
                            <div class="pprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="ptext">0.0 lei</div></div>
                        </div>
                            
                        </div>
                        
                        
                    </din>
                    
                    
                    
                </div>
            </div>
            
              <%--  threed row  --%> 
              
              
            <div class="row" id="bottomcontainer">
                ddddd
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
