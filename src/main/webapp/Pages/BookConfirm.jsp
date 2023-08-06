<%@page import="com.nttdata.domain.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Students</title>

<link rel="stylesheet" href="extStyleadminlogin.css">

</head>
<body bgcolor="#FCF3CF">
<div id=form>

<a href="..\Pages\index.jsp" style="color:#1b2770" >Home </a>
<a href="..\Pages\StudentLogin.jsp"  style="float:right ">Log Out</a>
<center>
			<h1 style="color:#762727"><strong><i> Confirm your Book Issue Request </i></strong></h1><hr color="red">
			
			</center>

            <h3 style="color:#040a0a"><i>Are you sure to Issue this Book?<i></i></h3>
            <a style="color:#1b2770" href="..\Pages\IssueBookSuccess.jsp" class="btn">Click Here to confirm requested book</a>
            <br><br>

</div>
</body>
</html>
