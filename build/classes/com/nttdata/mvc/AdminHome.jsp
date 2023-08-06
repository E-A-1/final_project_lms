<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Admin</title>

<link rel="stylesheet" href="extStyleadminlogin.css" type="text/css">

</head>
<style>
body
		{
		    background-image: url(https://www.pixel-studios.com/blog/wp-content/uploads/2018/12/012-1200x600.jpg);
			height:150px;
			background-size: cover;
			
			
	}
	div{
	background-color:#aea4a5;
	width:400;
	border: 8px solid #aea4a5;
	padding:50px;
	margin:auto;
	opacity: 0.7;
	
}
	

</style>

<body bgcolor="#FCF3CF">
<div id=form>

<a href="..\Pages\index.jsp" style="color:#10103d" >Home </a>
<a href="..\Pages\AdminLogin.jsp"  style="float:right ">Log Out</a>
<center>
			<h1 style="color:#2f1a91"><strong><i> Welcome To Library </i></strong></h1>
			<hr color=#7d7a88>
			</center>
			 
			<h2 style="color:#000000"><strong><i> <% out.print("Hello Admin"); %> </i></strong></h2>
			<hr color=#7d7a88>
       		<h3 style="color:#000000"><i>To Add Books</i></h3>
            <a style="color:#10103d" href="..\Pages\BookRegister.jsp"  class="btn">Click Here to add books</a>
            <br><br><hr>
            <h3 style="color:#000000"><i>To Update Books</i></h3>
            <a style="color:#10103d" href="..\Pages\UpdateBook.jsp"  class="btn">Click Here to update books</a>
            <br><br><hr>
            <h3 style="color:#000000"><i>To Delete Books</i></h3>
            <a style="color:#10103d" href="..\Pages\DeleteBook.jsp"  class="btn">Click Here to delete books</a>
            <br><br><hr>
            <h3 style="color:#000000"><i>View all Students</i></h3>
            <a style="color:#10103d" href="..\Pages\DisplayStudent.jsp"  class="btn">Click Here to see all students</a>
            <br><br><hr>
       		<h3 style="color:#000000"><i>To Add/Remove Students</i></h3>
			<a style="color:#10103d" href="..\Pages\AddOrRemoveStudents.jsp"  class="btn"> Click Here to add or remove Students</a>
			<br>


</div>
</body>
</html>
