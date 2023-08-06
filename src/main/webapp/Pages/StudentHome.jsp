<%@page import="com.nttdata.domain.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="extStylehome.css">

<meta charset="ISO-8859-1" />
<title>Sample Project</title>
<style>
.reg_form {
	background-image:
		url(https://img.freepik.com/free-vector/watercolor-abstract-purple-background_23-2149120778.jpg);
	background-size: cover;
	z-index: -1;
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

.btn {
	padding: 10px;
	background-color: rgb(156, 39, 176);
	color: white;
	font-family: "Times New Roman";
}

a {
	text-decoration: none;
	font-family: monospace;
}

body {
	margin: 0px;
	padding: 0px;
}
</style>
</head>
<body class="reg_form">

	<header class="header_style">
		<span>
			<h3>
				LIBRARY MANAGEMENT SYSTEM <span style="padding: 0 15px;">
					
			</h3>
		</span> <span style="padding: 0 15px;"><a
			href="..\Pages\index.jsp" class="header_button"> Sign Out</a>

		</span>
	</header>
	<center>
		<h1>
			<strong> Welcome To Library Management System ! </strong>
		</h1>
		<h2>Choose any option from below</h2>

		<br>
		<div>
			<h2 style="color: black">
				<strong><i>View and Request Books</strong></i>
			</h2>
			<a href="DisplayBook.do?role=student" class="btn">Click here for
				View and Request Books</a> <br> <br>
			<h2>
				<i><strong>Search books </strong></i>
			</h2>
			<a href="..\Pages\SearchBook.jsp"
				class="btn primary_color text_primary_color">Click Here To
				Search books</a> <br> <br>

			<h2>
				<i><strong>Return Books </strong></i>
			</h2>
			<a href="ListRequest.do?action=return" class="btn">Click Here to
				return books</a>
		</div>
		<br>
	</center>
</body>
</html>
