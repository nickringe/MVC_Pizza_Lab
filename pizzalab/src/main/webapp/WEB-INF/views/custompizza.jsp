<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Pizza Builder</title>
<link rel="stylesheet" href="/styles.css">
</head>
<body>
	<header>
		<a href="/">Home</a> <a href="/custompizza" class="active">Custom
			Pizza Builder</a> <a href="/review">Leave a Review</a>
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
			<h2>Prices:</h2>
		</div>
		<ul>
			<li><nobr>Small Pizza:</nobr> $7 --- Toppings: $0.50 each
			<li><nobr>Medium Pizza:</nobr> $10 --- Toppings: $1.00 each</li>
			<li><nobr>Large Pizza:</nobr> $12 --- Toppings: $1.25 each</li>
			<li><nobr>Gluten Free Crust:</nobr> add $2</li>
		</ul>
		<div id="customleft">
			<h3>Build Your Own Pizza:</h3>
			<form action="/buildpizza" method="post">
				Size: <select name="size" required>
					<option>Small</option>
					<option>Medium</option>
					<option>Large</option>
				</select><br> Toppings: <input name="toppings" type="number" min="0"
					max="10" required /><br> Gluten free: <input name="gluten"
					type="checkbox" /><br> Special instructions: <input
					name="special" type="text" /><br> <input type="submit"
					class="button" onclick="/buildpizza" />
			</form>
		</div>
		<div id="customright">
			<img src="/specialty.jpg">
		</div>

	</div>


</body>
</html>