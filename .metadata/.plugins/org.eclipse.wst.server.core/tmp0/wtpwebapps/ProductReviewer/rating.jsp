<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Rating</title>
	<link rel='stylesheet' type='text/css' href="style.css">
</head>
<!--  <meta charset="ISO-8859-1" -->

</head>
<body>
<p>Please rate this item:</p>
    <fieldset class="rating">     
        <input  type="radio" name="stars" id="4_stars" value="4" >
        <label  class="stars" for="4_stars">4 stars</label>
        <input type="radio" name="stars" id="3_stars" value="3" >
        <label class="stars" for="3_stars">3 stars</label>
        <input type="radio" name="stars" id="2_stars" value="2" >
        <label class="stars" for="2_stars">2 stars</label>
        <input type="radio" name="stars" id="1_stars" value="1" >
        <label class="stars" for="1_stars">1 star</label>
        <input type="radio" name="stars" id="0_stars" value="0" required>
        <label class="stars" for="0_stars">0 star</label>
        <span  class="label"> Rating: </span>
    </fieldset>
</body>
</html>