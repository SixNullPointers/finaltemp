<%@page import="com.psl.dao.CategoryDaoImpl"%>
<%@page import="com.psl.dao.CategoryDao"%>
<%@page import="java.util.Calendar"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.ForeachStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="com.psl.dao.ReviewDaoImpl"%>
<%@page import="com.psl.bean.Review"%>
<%@page import="com.psl.dao.ProductDaoImpl"%>
<%@page import="com.psl.dao.ProductDao"%>
<%@page import="com.psl.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Catagory</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<%!

public Product call(int proid){
ProductDao product =new ProductDaoImpl();
/* int max=5;
int min=1;
double random=Math.floor(Math.random() * (max + min -1)) + min;
List<Product> list=product.getProductByCategoryId(1); */
Product p=product.getProduct(proid);
return p;
}
%>
<script type="text/javascript">
$(document).on('load', function(){
	//it can also be $(window) 
	var html1='<div class="carousel-inner"><div class="item active"><img class="slide-image" src="http://placehold.it/800x300" alt=""></div><div class="item"><img class="slide-image" src="http://placehold.it/800x300" alt="">';
	    
         var html2= '  </div> <div class="item"><img class="slide-image" src="http://placehold.it/800x300" alt=""></div></div>';
         $('.carousel-inner').html(html1,html2);
	});

var pimage;
var pname,pprice;
window.onload = function(){
	String name=(String)request.getParameter("param");
	System.out.println(name);	
	loadContents();
 //	loadElectronics();
   // loadIron();  
}
function loadContents(){
	
		<% 
		for(int i=1;i<5;i++)
		 {
			System.out.println(i);
			Product pro=call(i);
			String pname=pro.getProductName();
			double pprice=pro.getProductPrice();
		%>
		var html = '<div class="col-sm-3 col-lg-3 col-md-3" ><div class="thumbnail"><img id="pim" src="images/'+"<%=pname%>"+'.jpeg"  alt="" width="320px" height="150px"><div class="caption"><h4><a class="productclass" href="Review.jsp?param=<%=pname%>" >'+"<%=pname%>"+'</a></h4><h4>'+'<%=pprice%>'+'</h4></div><div class="ratings"><p><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></p><p>15 reviews</p></div></div>';
		var newDiv;
		newDiv = document.createElement("DIV");
		newDiv.innerHTML = html;
		/*newDiv.id = "field" + itemID;*/
		document.getElementById('mobiles').insertBefore(newDiv,null);
	<%}%>	
}
<%-- function loadElectronics(){
	<% 
	for(int i=6;i<10;i++)
	 {
		System.out.println(i);
		
		Product pro=call(i);
		System.out.println(pro.getProductName());
		String pname=pro.getProductName();
		double pprice=pro.getProductPrice();
	%>
	var html = '<div class="col-sm-3 col-lg-3 col-md-3" ><div class="thumbnail"><img id="pac" src="images/'+"<%=pname%>"+'.jpeg"  alt="" width="320px" height="150px"><div class="caption"><h4><a class="productclass" href="Review.jsp?param=<%=pname%>" >'+"<%=pname%>"+'</a></h4><h4>'+'<%=pprice%>'+'</h4></div><div class="ratings"><p><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></p><p>15 reviews</p></div></div>';
	var newDiv;
	newDiv = document.createElement("DIV");
	newDiv.innerHTML = html;
	/*newDiv.id = "field" + itemID;*/
	document.getElementById('ac').insertBefore(newDiv,null);
<%}%>	
	
	
}
function loadIron(){
	<% 
	for(int i=10;i<14;i++)
	 {
		System.out.println(i);
		Product pro=call(i);
		System.out.println(pro.getProductName());
		String pname=pro.getProductName();
		double pprice=pro.getProductPrice();
	%>
	var html = '<div class="col-sm-3 col-lg-3 col-md-3" ><div class="thumbnail"><img id="pac" src="images/'+"<%=pname%>"+'.jpeg"  alt="" width="320px" height="150px"><div class="caption"><h4><a class="productclass" href="Review.jsp?param=<%=pname%>" >'+"<%=pname%>"+'</a></h4><h4>'+'<%=pprice%>'+'</h4></div><div class="ratings"><p><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></p><p>15 reviews</p></div></div>';
	var newDiv;
	newDiv = document.createElement("DIV");
	newDiv.innerHTML = html;
	/*newDiv.id = "field" + itemID;*/
	document.getElementById('iron').insertBefore(newDiv,null);
<%}%>	
	
	
}
 --%></script>


<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1098991976802112',
      xfbml      : true,
      version    : 'v2.5'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
   <div id="myModalforSignup"class="modal fade">
              <div class="modal-dialog">
                     <div class="modal-content">
                          
                           <!-- Header Section -->
                           <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal">&times;</button>
                                  <h2>Sign UP</h2>
                                  
                           </div>
                          
                           <!-- Body Section -->
                           <div class="modal-body">
                                  <form class="form col-md-12">
				<input type="text" class="form-control input-lg" placeholder="First Name" required autofocus /><br>
				                         <input type="text" class="form-control input-lg" placeholder="Last Name" required   /><br>
				                         <input type="text" class="form-control input-lg" placeholder="User Name" required  /><br>
				                         <input type="text" class="form-control input-lg" placeholder="Contact No" required  /><br>
                                         <input type="text" class="form-control input-lg" placeholder="Email" required  /><br>
                                         <input type="password" class="form-control input-lg" placeholder="Password" required /><br>
                                          <input type="password" class="form-control input-lg" placeholder="Confirm Password" required /><br><br><br>
                                       
                                  </form>
                           </div>
                          
                           <!-- Footer Section -->
                           <div class="modal-footer">
                                  <div class="col-md-12">
                                         <button class="btn btn-primary btn-lg btn-block">Sign Up</button>
                                  </div>
                           </div>
                     </div>
              </div>
       </div>
 
 
       	
       <!-- Modal for sign in -->
   <div id="myModal"class="modal fade">
              <div class="modal-dialog">
                     <div class="modal-content">
                          
                           <!-- Header Section -->
                           <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal">&times;</button>
                                  <h2>Please sign in</h2>
                                   <div class="fb-login-button" data-max-rows="1" data-size="large" data-show-faces="false" data-auto-logout-link="false"></div>
                           </div>
                          
                           <!-- Body Section -->
                           <div class="modal-body">
                                  <form class="form col-md-12">

                                         <input type="text" class="form-control input-lg" placeholder="Email" required autofocus />
                                         <input type="password" class="form-control input-lg" placeholder="Password" required />
                                        
                                         <label class="checkbox"> <input type="checkbox"
                                                value="remember-me" /> Remember me
                                         </label>
                                        
                                         <button class="btn btn-primary btn-lg btn-block">Sign In</button>
                                  </form>
                           </div>
                          
                           <!-- Footer Section -->
                           <div class="modal-footer">
                                  <div class="col-md-12">
                                         <span class="pull-left"><a href="#">Forgot Password?</a></span>
                                         <span><a href="#">Register</a></span>
                                  </div>
                           </div>
                     </div>
              </div>
       </div>

    <div class="container-fluid">
    <div class="row">
  
 	<div class="col-md-5">
    <img src="images/logo.png"width="30%" height="30%">
 	</div>     
    <div class="col-md-4">
      <div class="input-group">
        <input type="search"  class="form-control" placeholder="Search">
        <div class="input-group-btn">
            <button type="submit" class="btn btn-default" >
                <span class="glyphicon glyphicon-search"></span>
            </button>
        </div>
    </div>
 	</div>     
   <div class="col-md-3">
 	
 	</div>     
 
     </div>
    </div> 
   <nav class="navbar navbar-inverse navbar-default navbar-static-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">GoGrabIt</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
     <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Mobile
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li> 
        </ul>
      </li>
       <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Home Appliances
                <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 2-1</a></li>
          <li><a href="#">Page 2-2</a></li>
          <li><a href="#">Page 2-3</a></li> 
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Accessories
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 3-1</a></li>
          <li><a href="#">Page 3-2</a></li>
          <li><a href="#">Page 3-3</a></li> 
        </ul>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalforSignup"  ><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"  ><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    
    
  </div></nav>
    <!-- Page Content -->
    <div class="container-fluid">

        <div class="row">

            <div class="col-sm-3 col-lg-3 col-md-3">
                <p class="lead"></p>
                <div class="list-group"  style="margin-left: 20px;">
                <h3>Trending Poducts</h3>
                               <div class="item active" style="margin-top: 10px">
                                    <img src="http://placehold.it/800x300" alt="" width="80%" height="50%">
                                </div>
                                <div class="item">
                                    <img  src="http://placehold.it/800x300" alt=""width="80%" height="50%">
                                </div>
                                <div class="item">
                                    <img  src="http://placehold.it/800x300" alt=""width="80%" height="50%">
                                </div>
                                <div class="item">
                                    <img src="http://placehold.it/800x300" alt=""width="80%" height="50%">
                                </div>
                                <div class="item">
                                    <img  src="http://placehold.it/800x300" alt=""width="80%" height="50%">
                                </div>
                                <div class="item">
                                    <img  src="http://placehold.it/800x300" alt=""width="80%" height="50%">
                                </div>
                               
                </div>
            </div>
       <div class="col-md-9">
       
        <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                           <!--  <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://placehold.it/800x300" alt="">
                                </div>
                            </div> -->
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>
       
       
 
            <div class="row">
           <a href="#"><h1>Mobile</h1></a>
            </div>
              <div class="row" id="mobiles">
                </div>
             
            
            </div>
                </div>
                </div>
    
    <!-- /.container -->

    <div class="container-fluid">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4">
                    <p>Copyright &copy; www.goGrabIt.com 2016</p>
                </div>
                    <div class="col-lg-4"></div>
                 <!--  <div class="col-lg-4">
                    <h3>Contact Us</h3>
                    <h4>Sanket Jain</h4>
                    <h5>+91-86575784856</h5>
                    <h5>05178-260840</h5>
                </div> -->
                 <!--  <div class="col-lg-6">
                    <p>About Us</p>
                </div> -->
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>


</body>
</html>