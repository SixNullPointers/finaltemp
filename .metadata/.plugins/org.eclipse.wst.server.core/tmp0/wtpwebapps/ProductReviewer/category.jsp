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

<style type="text/css">
 .affix {
      top: 0;
      width: 100%;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }

</style>
<script type="text/javascript">
<%
String name=(String)request.getParameter("param");
System.out.println(name);

%>
<%!

public Set<Product> call(String name){
ProductDaoImpl product =new ProductDaoImpl();
/* int max=5;
int min=1;
double random=Math.floor(Math.random() * (max + min -1)) + min;
List<Product> list=product.getProductByCategoryId(1); */
Set<Product> p=product.getProductByCategoryName(name);
return p;
}
%>

var pimage;
var pname,pprice;
window.onload = function(){
	 loadImages();
	loadContents();
 
}

function loadContents(){
	
	<% 
	Set<Product> pro=call(name);
	for(Product product:pro)
	 {
	//	System.out.println(i);
		
		String pname=product.getProductName();
		double pprice=product.getProductPrice();
	%>
	var html = '<div class="col-sm-3 col-lg-3 col-md-3" ><div class="thumbnail"><img id="pim" src="images/'+"<%=pname%>"+'.jpeg"  alt="" width="320px" height="150px"><div class="caption"><h4><a class="productclass" href="Review.jsp?param=<%=pname%>" >'+"<%=pname%>"+'</a></h4><h4>'+'<%=pprice%>'+'</h4></div><div class="ratings"><p><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></p><p>15 reviews</p></div></div>';
	var newDiv;
	newDiv = document.createElement("DIV");
	newDiv.innerHTML = html;
	/*newDiv.id = "field" + itemID;*/
	document.getElementById('mobiles').insertBefore(newDiv,null);
<%}%>	
}

function loadImages(){
	<% 
	String image[]=new String[4];
	System.out.println(name);
	Set<Product> proImag=call(name);
	
	int i=1;
	for(Product product:proImag)
	 {
		
		//System.out.println(i);
	
		String pname=product.getProductName();
		//double pprice=pro.getProductPrice();
	 
	 image[i]=pname;
	 System.out.println(image[i]);
	 i++;
	if(i==4){
		break;
	}
	 }
	%>
	var html1='<div class="carousel-inner"><div class="item active"><a href="Review.jsp?param=<%=image[1]%>"><img     class="slide-image" src="images/'+"<%=image[1]%>"+'.jpeg" alt=""></a></div><div class="item"><a href="Review.jsp?param=<%=image[2]%>"><img  class="slide-image" src="images/'+"<%=image[2]%>"+'.jpeg" alt=""></a></div> <div class="item"><a href="Review.jsp?param=<%=image[3]%>"><img  class="slide-image" src="images/'+"<%=image[3]%>"+'.jpeg" alt=""></a></div></div>';
	
    $('.carousel-inner').html(html1);
}

</script>










<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><%=name %></title>

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
  <nav class="navbar navbar-inverse navbar-default navbar-static-top" role="navigation" data-spy="affix" data-offset-top="197">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="FinalJSP.jsp">Home</a></li>
      <li><a href="category.jsp?param=Refrigerator">Refrigerator</a></li>
      <li><a href="category.jsp?param=Iron">Iron</a></li> 
      <li><a href="category.jsp?param=Air Conditioner">Air Conditioner</a></li>
      <li><a  href="category.jsp?param=Television">Television</a></li> 
       <li><a href="category.jsp?param=Mobile">Mobile</a></li>
          <li><a href="category.jsp?param=Camera">Camera</a></li>
             <li><a href="category.jsp?param=Pendrive">Pendrive</a></li> 
          <li><a href="category.jsp?param=Laptop">Laptop</a></li>
          <li><a href="category.jsp?param=Earphones">Earphones</a></li> 
    </ul>
     <ul class="nav navbar-nav navbar-right">
      <li><a href="#" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalforSignup"  ><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"  ><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
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
                            <div  class="carousel-inner">
                            </div>
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
           <a href="#"><h1><%=name %></h1></a>
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