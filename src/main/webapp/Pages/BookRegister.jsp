<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Books</title>
<link rel="stylesheet" href="extStylehome.css" type="text/css" />
</head>


<style>
.reg_form {
	background-image:
		url(https://img.freepik.com/free-vector/watercolor-abstract-purple-background_23-2149120778.jpg);
	background-size: cover;
	z-index: -1;
}

.input_container {
	padding-top: 5px;
	padding-bottom: 5px;
}

.input_style {
	padding: 10px;
	border: 0;
	box-shadow: 0 0 15px 4px rgba(0, 0, 0, 0.06);
	border-radius: 10px;
	width: 90%;
}

.card_style {
	box-shadow: 0 0 15px 4px rgba(0, 0, 0, 0.06);
	border-radius: 10px;
	padding: 30px;
	background-color: white;
	min-width: 400px;
}

.label_style {
	font-size: 16px;
	font-family: sans-serif;
}

body {
	margin: 0px;
	padding: 0
}
.header_button {
	padding: 2px 5px;
	background-color: white;
	color: rgb(156, 39, 176);
	font-family: "Times New Roman";
	font-weight: bold;
}
.header_style {
  background-color: rgb(156, 39, 176);
  height: 50px;
  color: white;
  display: flex;
  align-items: center;
  font-size: medium;
  padding: 0px 7px;
  justify-content: space-between;
}
a {
  text-decoration: none;
  font-family: monospace;
}
</style>

<body class="reg_form">
	<header class="header_style"> <span>
		<h3>
			LIBRARY MANAGEMENT SYSTEM <span style="padding: 0 15px;"><a
				href="..\Pages\adminhome.jsp" class="header_button"> Home</a>
		</h3>
	</span> <span style="padding: 0 15px;"><a
		href="..\Pages\index.jsp" class="header_button"> Sign Out</a> </span>
	</header>

	<div
		style="width: 100%; display: flex; justify-content: center; align-items: center;">
		<div class="card_style" style="z-index: 2; margin: 20px;">
			<form name="Registration" action="RegisterBook.do">
				<div
					style="padding-bottom: 20px; font-weight: bold; font-size: 25px"
					class="center_align">Add new book</div>
				<label class="label_style">Enter Book Name </label>
				<div class="input_container">
					<input type="text" class="input_style" name="bookname" required />
				</div>
				<label class="label_style">ISBN </label>
				<div class="input_container">
					<input type="text" class="input_style" name="isbn" required />
				</div>
				<label class="label_style">Author </label>
				<div class="input_container">
					<input type="text" class="input_style" name="author" required />
				</div>
				<label class="label_style">Publisher </label>
				<div class="input_container">
					<input type="text" class="input_style" name="publisher" required />
				</div>
				<label class="label_style">Edition</label>
				<div class="input_container">
					<input type="text" class="input_style" name="edition" required />
				</div>
				<label class="label_style">Price</label>
				<div class="input_container">
					<input type="text" class="input_style" name="price" required />
				</div>
				<label class="label_style">Quantity</label>
				<div class="input_container">
					<input type="text" class="input_style" name="quantity" required />
				</div>
				<label class="label_style">Category</label>
				<div class="input_container">
					<input type="text" class="input_style" name="category" required />
				</div>
				<div>
					<br />
					<div class="center_align">
						<button type="submit"
							style="width: 100%; background-color: rgb(156, 39, 176); color: white; padding: 10px; border: 0px;">
							Register</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>