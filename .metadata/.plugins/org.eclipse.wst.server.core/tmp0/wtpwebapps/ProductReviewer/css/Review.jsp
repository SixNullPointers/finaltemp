<%@page import="com.psl.dao.ReviewDaoImpl"%>
<%@page import="com.psl.bean.Review"%>
<%@page import="com.psl.dao.ProductDaoImpl"%>
<%@page import="com.psl.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	
%>









<!DOCTYPE html>
<html lang="en">



<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">



<title>!!!...GOGrabIT...!!!</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/shop-homepage.css" rel="stylesheet">
<script src="js/jq.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<script type="text/javascript">
function getProductName(){

<%-- <%
String name=(String)request.getParameter("param");
System.out.println(name);

ProductDaoImpl p=new ProductDaoImpl();
Product product=p.getProductByName(name);
System.out.println(product.getProductName());
System.out.println(product.getProductPrice());
double price=product.getProductPrice();

ReviewDaoImpl r=new ReviewDaoImpl();
int totalReview=r.getReviewById(product.getProductId());


%> --%>
var i;
for (i = 0; i < 2; i++) { 
   
	
	$("#reviewsample").after('<div class="well"><label>SAnket</label><h6>	<label>Review of that guy</label></h6><h6><label>Date</label><a href="#">Reply</a></h6></div>');
}
/* $("img").after("Some text after");	 */

}
</script>

<body onload="getProductName()">
	<script>
			
	
	
		window.fbAsyncInit = function() {
			FB.init({
				appId : '1098991976802112',
				xfbml : true,
				version : 'v2.5'
			});
		};

		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {
				return;
			}
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<div id="myModalforSignup" class="modal fade">
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
						<input type="text" class="form-control input-lg"
							placeholder="First Name" required autofocus /><br> <input
							type="text" class="form-control input-lg" placeholder="Last Name"
							required /><br> <input type="text"
							class="form-control input-lg" placeholder="User Name" required /><br>
						<input type="text" class="form-control input-lg"
							placeholder="Contact No" required /><br> <input type="text"
							class="form-control input-lg" placeholder="Email" required /><br>
						<input type="password" class="form-control input-lg"
							placeholder="Password" required /><br> <input
							type="password" class="form-control input-lg"
							placeholder="Confirm Password" required /><br> <br> <br>

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
	<div id="myModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Header Section -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h2>Please sign in</h2>
					<div class="fb-login-button" data-max-rows="1" data-size="large"
						data-show-faces="false" data-auto-logout-link="false"></div>
				</div>

				<!-- Body Section -->
				<div class="modal-body">
					<form class="form col-md-12">

						<input type="text" class="form-control input-lg"
							placeholder="Email" required autofocus /> <input type="password"
							class="form-control input-lg" placeholder="Password" required />

						<label class="checkbox"> <input type="checkbox"
							value="remember-me" /> Remember me
						</label>

						<button class="btn btn-primary btn-lg btn-block">Sign In</button>
					</form>
				</div>

				<!-- Footer Section -->
				<div class="modal-footer">
					<div class="col-md-12">
						<span class="pull-left"><a href="#">Forgot Password?</a></span> <span><a
							href="#">Register</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">

			<div class="col-md-5">
				<img src="images/logo.png" width="30%" height="30%">
			</div>
			<div class="col-md-4">
				<div class="input-group">
					<input type="search" class="form-control" placeholder="Search">
					<div class="input-group-btn">
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</div>
				</div>
			</div>
			<div class="col-md-3"></div>

		</div>
	</div>
	<nav class="navbar navbar-inverse navbar-default navbar-static-top"
		role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">GoGrabIt</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Men <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 1-1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Women <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 2-1</a></li>
						<li><a href="#">Page 2-2</a></li>
						<li><a href="#">Page 2-3</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Electronics <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 3-1</a></li>
						<li><a href="#">Page 3-2</a></li>
						<li><a href="#">Page 3-3</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" class="btn btn-info btn-lg" data-toggle="modal"
					data-target="#myModalforSignup"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a class="btn btn-info btn-lg" data-toggle="modal"
					data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</nav>
	<!-- Page Content -->

	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 ">
				<!-- col-md-12 col-sm-12 -->
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label><h4>Name of Catagory</h4>></label>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-4">
								<img src="http://placehold.it/320x150" alt="" width="100%"
									height="100%">
							</div>

							<div class="col-lg-4">
								<div class="caption">
									<h4>
										<label id="pname">snaket</label>
									</h4>
									<h4>2334434</h4>
								</div>
								<div class="ratings">
									<p>
										<span class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span>
									</p>
									<p>reviews</p>
								</div>
							</div>
							<div class="col-lg-4">
								<h1>Description of product</h1>
								<br> <br> <a href="#addReview">
									<button type="button" class="btn btn-primary">Add
										Review</button>
								</a> <br> <br> <a href="#addQuestion"><button
										type="button" class="btn btn-primary">Ask Query</button></a>
							</div>
						</div>



					</div>
				</div>
				<div class="panel panel-info">
					<div class="panel-heading">Reviews & Queries</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-6">
								<div class="container">
								
										<label >Review</label>
								
									<div id="reviewsample" class="well">
										<label>SAnket</label>
									<h6>
											<label>Review of that guy</label>
										</h6>
										<h6>
											<label>Date</label>
											<a href="#">Reply</a>
										</h6>
									</div>
								</div>


								<div class="form-group">
									<label for="comment" id="addReview">Add Review:</label>
									<textarea class="form-control" rows="5" id="comment"></textarea>
									<br>
									<button type="button" class="btn btn-primary">Post
										Review</button>
								</div>
							</div>
							<div class="col-lg-6">
								<h4>Queries</h4>
								<br>
								<div class="form-group">
									<label id="addQuestion" for="comment">Your Query:</label>
									<textarea class="form-control" rows="5" id="comment"></textarea>
									<br>
									<button type="button" class="btn btn-primary">Post
										Question</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- <div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6">
					

				</div>
				<div class="col-lg-9 col-md-9  col-sm-6">
					<h1>Name of product</h1>
				</div>





			</div> -->





		</div>



























	</div>






























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
