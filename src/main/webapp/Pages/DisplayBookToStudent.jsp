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
        <TH style="color:#f0fa23">Book Id</TH>
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
<td> <%=book.getBookId() %></td>
<td> <%=book.getBookName() %></td><td><%=book.getIsbn()%></td> <td><%=book.getAuthor()%></td>
<td><%=book.getPublisher() %></td><td><%=book.getEdition() %></td><td><%=book.getPrice() %></td><td><%=book.getQuantity() %></td>
<td><%=book.getCategoryName() %></td>
<td> <a href="RequestBook.do?bookId=<%=book.getBookId()%>">Request</a></td>

</tr>
<% } %>

     </TABLE>
</center>
</div>
</body>
</html>