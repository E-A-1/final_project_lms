<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
     <%@page import="java.util.List"%>
<!-- script let tag used to write java code inside html  
In JSP, java code can be written inside the jsp page using the scriptlet tag
JSP--java servlet page it is used to create web application -->
<%@page import="com.nttdata.domain.BookDetails"%>
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
<h1 style="color:#762727"> <strong><i> All Books </strong></i></h1>
</center>
<hr color="red">
<center>


<TABLE BORDER="1">
      <TR>
      <TH style="color:#f0fa23">Book Name</TH>
      <TH style="color:#f0fa23">Isbn</TH>
      <TH style="color:#f0fa23">Author</TH>
      <TH style="color:#f0fa23">Publisher</TH>
      <TH style="color:#f0fa23">Edition</TH>
      <TH style="color:#f0fa23">Price</TH>
      <TH style="color:#f0fa23">Quantity</TH>
<TH style="color:#f0fa23">Category</TH>
      </TR>
      <%
for(BookDetails book:((ArrayList<BookDetails>)request.getAttribute("bookList")))
{
%>
<tr>
<td> <%=book.getBookName() %></td><td><%=book.getIsbn()%></td> <td><%=book.getAuthor()%></td>
<td><%=book.getPublisher() %></td><td><%=book.getEdition() %></td><td><%=book.getPrice() %></td><td><%=book.getQuantity() %></td>
<td><%=book.getCategoryName() %></td>
<td> <a href="UpdateBook.jsp?isbn=<%=book.getIsbn() %>&quantity=<%=book.getQuantity() %>&price=<%=book.getPrice()%>"> Update</a>    </td>
<td> <a href="DeleteBook.jsp?isbn=<%=book.getIsbn() %>">Delete</a></td>
</tr>
<% } %>
<%--       <% while(rs.next()){ %> --%>
<!--       <TR> -->
<%--        <TD style="color:#060c2e"> <%= rs.getString(1) %></TD> --%>
<%--        <TD style="color:#060c2e"> <%= rs.getInt(2) %></TD> --%>
<%--        <TD style="color:#060c2e"> <%= rs.getString(3) %></TD> --%>
<%--        <TD style="color:#060c2e"> <%= rs.getString(4) %></TD> --%>
<%--        <TD style="color:#060c2e"> <%= rs.getString(5) %></TD> --%>
<%--        <TD style="color:#060c2e"> <%= rs.getInt(6) %></TD> --%>
<%--        <TD style="color:#060c2e"> <%= rs.getInt(7) %></TD> --%>
<!--       </TR> -->
<%--       <% } %> --%>
     </TABLE>
</center>
</div>
</body>
</html>