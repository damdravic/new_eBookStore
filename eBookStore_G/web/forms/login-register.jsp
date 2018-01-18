
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eBookStore</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link  href="../css/bookcss.css" rel="stylesheet">
        <link href="../css/login-register.css" rel="stylesheet">
        <script src="../js/bootstrap.min.js"></script>
        <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script>
    $(function() {
    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});

        </script>
        
        
  
    </head>
    <body>
        <div id="header">
            <div id="header-top" class="container">
                <div class="row">
                    <div id="logo" class="col-sm-3 center">
                        <a href="../index.jsp"><img src="../images/logo.png" alt=""></a>
                    </div>
                    
                    <div id="minibanner" class="col-sm-6">
                        <img src="images/banner_2.png" alt="">
                    </div>
                    
                    <div class="col-sm-3  btn-group-vertical"> 
 <%--  login/register ///////////////////////////////////////////////////////////////////////////////////////  --%>                 
                               <a href="../index.jsp"   type="button" class="btn btn-default">Home </a> 
 <%--  shopping cart ///////////////////////////////////////////////////////////////////////////////////////  --%>                            
                              

                    </div>  
                </div> 
            </div>
            <div id="header-bottom">
               
            </div>
            
         </div>
 <%-- end of header  --%>                       
         <div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember"> Remember Me</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
											</div>
										</div>
                                                                        </div></br></br></br>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								<form id="register-form" action="" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
										<input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
                                                                        </div></br></br>
								</form>
							</div>
						</div>
					</div>
				</div>
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
