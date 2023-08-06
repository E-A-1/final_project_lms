<%@page import="com.nttdata.domain.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
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
.header_button {
  padding: 2px 5px;
  background-color: white;
  color: rgb(156, 39, 176);
  font-family: "Times New Roman";
  font-weight: bold;
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
.reg_form {
	background-image:
		url(https://img.freepik.com/free-vector/watercolor-abstract-purple-background_23-2149120778.jpg);
	background-size: cover;
	z-index: -1;
}

body {
	margin: 0;
	padding: 0;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Students</title>

<link rel="stylesheet" href="extStylehome.css">


</head>
<body class="reg_form">
	<header class="header_style"> <span>
		<h3>
			LIBRARY MANAGEMENT SYSTEM <span style="padding: 0 15px;"><a
				href="..\Pages\index.jsp" class="header_button"> Home</a>
		</h3>
	</span> <span style="padding: 0 15px;"><a
		href="..\Pages\StudentLogin.jsp" class="header_button"> Sign Out</a> </span>
	</header>


	<center>
		<h1 style="">
			<strong><i> Confirm to return book </i></strong>
		</h1>

	</center>

	<center>
		<h3 style="color: #040a0a">
			<i>Are you sure to return this Book?<i></i>
		</h3>
	</center>
	<center>
		<a class="btn"
			href="BookReturn.do?requestId=<%=request.getParameter("requestId")%>"
			class="btn">Click Here to Return book</a>
	</center>
	<br>
	<br>


</body>
</html>

