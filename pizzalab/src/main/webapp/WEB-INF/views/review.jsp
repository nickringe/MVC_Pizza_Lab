<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leave A Review</title>
<link rel="stylesheet" href="/styles.css">
</head>
<body>
	<header>
		<a href="/">Home</a> <a href="/custompizza">Custom Pizza Builder</a> <a
			href="/review" class="active">Leave a Review</a>
	</header>
	<div class="left">
		<p>Specials:</p>
		<a href="/pizza?type=Veggie Deluxe&price=11.99">Veggie Deluxe<img
			src="/vegpizza.jpg"></a> <a
			href="/pizza?type=Meat Deluxe&price=12.99">Meat Deluxe<img
			src="/meatpizza.png"></a> <a
			href="/pizza?type=BBQ Chicken&price=13.99">BBQ Chicken<img
			src="/chickenpizza.jpg"></a>
	</div>

	<div class="right">
		<div class="h2left">
			<h2>Please leave us feedback below!</h2>
		</div>
		<form action="/review" method="post">
			Name: <input name="name" type="text" required/> 
			Comment: <input	name="comment" type="text" minlength="5" required/> 
				Rating: <input name="rating" type="number" min="0" max="10" required /> 
				<input type="submit" class="button" onclick="/confirmation" />
		</form>
	</div>
</body>
</html>