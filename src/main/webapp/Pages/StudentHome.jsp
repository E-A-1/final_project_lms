<%@page import="com.nttdata.domain.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Students</title>

<link rel="stylesheet" href="extStylehome.css" type="text/css">
</head>

<style>
body
		{
/* 		    background-image: url(https://tse4.mm.bing.net/th/id/OIP.l-harNe0B9pSA3fShinBqQHaHa?w=200&h=199&c=7&r=0&o=5&dpr=1.5&pid=1.7); */
/* 			height:150px; */
/* 			background-size: cover; */
			
			
	}
	div{
	background-color:#aea4a5;
	width:400;
	border: 8px solid #aea4a5;
	padding:50px;
	margin:auto;
	opacity: 0.7;
	
	

</style>
<body bgcolor="#FCF3CF">
<div id=form>

<a href="..\Pages\index.jsp" style="color:#171f4f" >Home </a>
<a href="..\Pages\StudentLogin.jsp"  style="float:right ">Log Out</a>
<center>
			<h1 style="color:#000000"><strong><i> Welcome To Library </i></strong></h1>
			<hr color="red">
			</center>
			<h2 style="color:#000000"><strong><i> Welcome ${requestScope.details.Name } </i></strong></h2>
			<hr color="red">
       		<h3 style="color:#000000"><i>View and Request Books</i></h3>
            <a style="color:#1b2770" href="DisplayBook.do?role=student" class="btn">Click Here to view all books</a>
            <br><br><hr>
            <h3 style="color:#000000"><i>Search Books</i></h3>
            <a style="color:#1b2770" href="..\Pages\SearchBook.jsp" class="btn">Click Here to Search a book</a>
            <br><br><hr>
            <h3 style="color:#000000"><i>Return Books<i></h3>
			<a style="color:#1b2770" href="ListRequest.do?action=return" class="btn"> Click Here to return the Issued book</a>
			<br>
</div>
</body>
</html>
