<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Books</title>
<link rel="stylesheet" href="extStylehome.css" type="text/css">

</head>

<style>
body
		{
/* 		    background-image: url(https://cdn.wallpapersafari.com/96/91/YfZgjo.jpg); */
/* 			padding:10px; */
/* 			margin:10px; */
	}
	</style>
	
<body >
<div id=form>

<a href="..\Pages\index.jsp" style="color:#10103d" >Home </a>
<a href="..\Pages\AdminLogin.jsp"  style="float:right ">Log Out</a>
<h1 align="center" style="color:#f7f7fa"><strong><i>Add Book Details</i></strong></h1>
			<hr color=#7d7a88>

<form action="RegisterBook.do">  
<center>

<table>

	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
	</tr>

    <tr>
    <td style="color:#000000"><b>Book Name :</b></td> 
    <td><input type="text" name="bookname" required="required"></td>
    </tr>
    <tr>
    <td style="color:#000000"><b>ISBN no :</b></td>
    <td><input type="text" name="isbn" required="required"></td>
    </tr>  
    <tr>
    <td style="color:#000000"><b>Author :</b></td> 
    <td><input type="text" name="author" required="required"></td>
    </tr>  
    <tr>  
    <td style="color:#000000"><b>Publisher :</b></td>
    <td><input type="text" name="publisher" required="required"></td>
    </tr>  
    <tr>
    <td style="color:#000000"><b>Edition :</b></td>
    <td><input type="text" name="edition" required="required"></td>
    </tr>  
    <tr>
    <td style="color:#000000"><b>Price :</b></td>
    <td><input type="text" name="price" required="required"></td>
    </tr>
    <tr>  
    <td style="color:#000000"><b>Quantity :</b></td>   
    <td><input type="text" name="quantity" required="required"></td>
    </tr>  
     <tr>  
    <td style="color:#000000"><b>Category :</b></td>   
    <td><input type="text" name="category" required="required"></td>
    </tr>  
	<tr>
		<td align="center"><input type="submit"
			value="Register"></td>
	</tr>
	
</table>
 
</form>  
</div>
</center>
</body>
</html>