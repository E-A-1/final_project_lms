<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="extStylehome.css">
<title>Register Student</title>
</head>
<body bgcolor="#E6FF81">
<div id=form>

<a href="..\Pages\index.jsp" style="color:#000099" >Home </a>
<a href="..\Pages\AdminLogin.jsp"  style="float:right ">Log Out</a><br>
<center>
<h1 align="center" style="color:#2f1a91"><strong><i>Student Register</i></strong></h1>
<hr color=#7d7a88>

<form action="StudentRegister.do">
<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>
	<tr>
		<td style="color:#000000">Student id:</td>
		<td><input type="text" name="student_id"></td>
	</tr>
		<tr>
		<td style="color:#000000">Student No:</td>
		<td><input type="text" name="student_no"></td>
	</tr>
	<tr>
		<td style="color:#000000">Student Name:</td>
		<td><input type="text" name="student_name"></td>
	</tr>
	<tr>
		<td style="color:#000000">Password:</td>
		<td><input type="text" name="password"></td>
	</tr>
	<tr>
		<td style="color:#000000">Email Id:</td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td style="color:#000000">Phone Number:</td>
		<td><input type="text" name="phno"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit"
			value="Register"></td>
	</tr>
</table>
</form>
</center>
</div>
</body>
</html>