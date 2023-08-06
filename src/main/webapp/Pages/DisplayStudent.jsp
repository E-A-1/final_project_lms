<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
     <%@page import="java.util.List"%>
<!-- script let tag used to write java code inside html  
In JSP, java code can be written inside the jsp page using the scriptlet tag
JSP--java servlet page it is used to create web application -->
<%@page import="com.nttdata.domain.Student"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Books</title>
<link rel="stylesheet" href="extStylehome.css">

</head>


<body>
<div id=form>

<a href="..\Pages\index.jsp" style="color:#131e57" >Home </a>
<a href="..\Pages\StudentLogin.jsp"  style="float:right ">Log Out</a>
<center>
<h1 style="color:#762727"> <strong><i> All Students </strong></i></h1>
</center>
<hr color="red">
<center>


<TABLE BORDER="1">
      <TR>
         <TH style="color:#f0fa23">Student ID</TH>
      <TH style="color:#f0fa23">Studnet Name</TH>
      <TH style="color:#f0fa23">Email</TH>
      <TH style="color:#f0fa23">Contact No</TH>
     </TR>
      <%
for(Student student:((ArrayList<Student>)request.getAttribute("studentList")))
{
%>
<tr>
<td> <%=student.getStudentId() %></td><td><%=student.getStudentName()%></td> <td><%=student.getEmail()%></td>
<td><%=student.getContactNumber() %></td>

<td> <a href="DeleteStudent.jsp?studentId=<%=student.getStudentId() %>">Delete</a></td>
</tr>
<% } %>
<
     </TABLE>
</center>
</div>
</body>
</html>