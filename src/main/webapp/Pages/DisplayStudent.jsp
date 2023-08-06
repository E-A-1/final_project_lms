<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.List"%>
<!-- script let tag used to write java code inside html  
In JSP, java code can be written inside the jsp page using the scriptlet tag
JSP--java servlet page it is used to create web application -->
<%@page import="com.nttdata.domain.Student"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<style>
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

.reg_form {
	background-image:
		url(https://img.freepik.com/free-vector/watercolor-abstract-purple-background_23-2149120778.jpg);
	background-size: cover;
	z-index: -1;
}

.styled-table {
	border-collapse: collapse;
	margin: 25px 0;
	font-size: 0.9em;
	font-family: sans-serif;
	min-width: 400px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table thead tr {
	background-color: #009879;
	color: #ffffff;
	text-align: left;
}

.styled-table th, .styled-table td {
	padding: 12px 15px;
}

.styled-table tbody tr {
	border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

.styled-table tbody tr.active-row {
	font-weight: bold;
	color: #009879;
}

.center_align {
	display: flex;
	justify-content: center;
	align-items: center;
}

body {
	margin: 0;
	padding: 0;
}
</style>
<meta charset="UTF-8">
<title>Display Books</title>
<link rel="stylesheet" href="extStylehome.css">

</head>
<body class="reg_form">
	<header class="header_style">
		<span>
			<h3>
				LIBRARY MANAGEMENT SYSTEM <span style="padding: 0 15px;"><a
					href="..\Pages\adminhome.jsp" class="header_button"> Home</a>
			</h3>
		</span> <span style="padding: 0 15px;"><a
			href="..\Pages\index.jsp" class="header_button"> Sign Out</a>

		</span>
	</header>
	<center>
     <TABLE class="styled-table">
			<TR>
				<TH>Student ID</TH>
				<TH>Studnet Name</TH>
				<TH>Email</TH>
				<TH>Contact No</TH>
			</TR>
<% for(Student student:((ArrayList<Student>)request.getAttribute("studentList")))
{
%>
			<tr>
				<td><%=student.getStudentId() %></td>
				<td><%=student.getStudentName()%></td>
				<td><%=student.getEmail()%></td>
				<td><%=student.getContactNumber() %></td>

				<td><a
					href="DeleteStudent.jsp?studentId=<%=student.getStudentId() %>">Delete</a></td>
			</tr>
			<% } %>
		
		</TABLE>
	</center>
</body>
</html>