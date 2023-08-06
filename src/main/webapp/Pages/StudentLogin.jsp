<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Login</title>

<link rel="stylesheet" href="extStyleadminlogin.css" type="text/css">

</head>
<style>
body
		{
/* 		    background-image: url(https://tse2.mm.bing.net/th/id/OIP.mvVUXe7aBABckRKk1Pmm4AAAAA?pid=ImgDet&w=200&h=137&c=7&dpr=1.5); */
/* 			height:150px; */
/* 			background-size: cover; */
			
			
	}
	div{
/* 	background-color:#aea4a5; */
	width:400;
/* 	border: 8px solid #aea4a5; */
	padding:50px;
	margin:auto;
/* 	opacity: 0.7; */
	
}
	

</style>

</head>
<body >
<div id=form>

<a href="..\Pages\index.jsp" style="color:#1b2770" >Home </a>



<center>
<h1 style="color:#000000" > <strong><i> Student Login Portal</i></strong> </h1><hr color=#000000>
<form action="StudentLogin.do">
<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>
	<tr>
		<td>Student Id :</td>
		<td><input type="text" name="student_id" required="required"></td>
	</tr>
	<tr>
		<td>Password :</td>
		<td><input type="password" name="password" required="required"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="Login" ></td>
	</tr>
</table>
</form>
</center>
</div>

</body>

</html>