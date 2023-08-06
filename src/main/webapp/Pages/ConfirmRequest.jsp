<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="extStylehome.css"></head>
<body>
<div id=form>

<a href="..\Pages\index.jsp" style="color:#fafafa" >Home </a>
<a href="..\Pages\AdminLogin.jsp"  style="float:right ">Log Out</a><br>
<center>
<% String requestId =request.getParameter("requestId");

%>
<h1 style="color:#2f1a91"> <strong><i> Confirm Book Request</strong></i></h1>
<hr color=#7d7a88>
	<form action="ConfirmBookRequest.do">
<table>
	
    <tr>
		<td style="color:#000000">Enter Book RequestId :</td>
		<td><input type="text" name="requestId" value= "<%=requestId%>" readonly required="required"></td>
	</tr>
	
		<td colspan="2" align="center"><input type="submit" value="Confirm"></td>
	
	</tr>
</table>
</form>
</center>
</div>
</body>
</html>