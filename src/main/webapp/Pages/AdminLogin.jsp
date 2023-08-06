<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>

<link rel="stylesheet" href="extStyleadminlogin.css" type="text/css">

</head>
<style>
body
		{
/* 		    background-image: url(https://png.pngtree.com/thumb_back/fh260/back_our/20190620/ourmid/pngtree-library-cartoon-banner-illustration-image_155272.jpg); */
/* 			height:150px; */
/* 			background-size: cover; */
			
			
	}

</style>
<body >`
<div id=form>

<a href="..\Pages\index.jsp" style="color:#1b174d" >Home </a>



<center>
<h1 style="color:#2f1a91" > <strong><i> Admin Login Portal</i></strong> </h1><hr color=#7d7a88>
<form action="AdminLogin.do">
<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>
	<tr>
		<td style="color:#000000" ><b>Admin id :</b></td>
		<td><input type="text" name="admin_id" required="required"></td>
	</tr>
	<tr>
		<td style="color:#000000"><b>Password :</b></td>
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