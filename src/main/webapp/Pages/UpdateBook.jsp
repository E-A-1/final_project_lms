<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>library Management system Login</title>

<link rel="stylesheet" href="extStylehome.css">

</head>
<body bgcolor="#B0EEF3" >
<div id=form>
<a href="..\Pages\index.jsp" style="color:#000099" >Home </a>
<a href="..\Pages\AdminLogin.jsp"  style="float:right ">Log Out</a>
<center>

</center>
<% String isbn =request.getParameter("isbn");
 String price =request.getParameter("price");
  String quantity =request.getParameter("quantity");
%>
<center>

<h1 style="color:#2f1a91"> <strong><i> Update book Price and Quantity </strong></i></h1>
<hr color=#7d7a88>
	<form action="UpdatePrice.do">
<table>
	<tr>
		<td colspan="2"><c:if test="${requestScope.Err!=null}">
			<font color="red">${requestScope.Err}</font>
		</c:if></td>
    </tr>
    <tr>
		<td style="color:#000000">Enter Book isbn :</td>
		<td><input type="text" name="isbn" value= "<%=isbn%>" required="required"></td>
	</tr>
    <tr>
		<td style="color:#000000">Enter book price :</td>
		<td><input type="text" name="price" value= "<%=price%>"required="required"></td>
	</tr>
	<tr>
		<td style="color:#000000">Enter book quantity :</td>
		<td><input type="text" name="quantity"value= "<%=quantity%>" required="required"></td>
	</tr>
	
		<td colspan="2" align="center"><input type="submit" value="Update"></td>
	</tr>
</table>
</form>
</center>




<br>
</div>
</body>
</html>