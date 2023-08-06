<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Admin Login</title>
<link rel="stylesheet" href="extStylehome.css">

<link rel="stylesheet" href="extStyleadminlogin.css" type="text/css" />
</head>
<style>
body {
	padding: 0;
	margin: 0;
}
.center_align {
  display: flex;
  justify-content: center;
  align-items: center;
}
.small_card_style {
  box-shadow: 0 0 15px 4px rgba(0, 0, 0, 0.06);
  border-radius: 10px;
  padding: 20px;
  background-color: white;
  min-width: 500px;
}
.btn {
  padding: 10px;
  background-color: rgb(156, 39, 176);
  color: white;
  font-family: "Times New Roman";
}
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

</style>
<body class="reg_form">

<header class="header_style"> <span>
		<h3>
			LIBRARY MANAGEMENT SYSTEM <span style="padding: 0 15px;"><a
				href="..\Pages\adminhome.jsp" class="header_button"> Home</a>
		</h3>
	</span> <span style="padding: 0 15px;"><a
		href="..\Pages\AdminLogin.jsp" class="header_button"> Sign Out</a> </span>
	</header>  
    


	<div
		style="width: 100%; display: flex; justify-content: center; align-items: center; margin-top: 30px">
		<div class="small_card_style" style="z-index: 2;">
			<form action="adminhome.jsp">
				<div class="center_align">
					<h1>
						<strong>&#10060; Error </strong>
					</h1>
				</div>
				<div class="center_align">
					<h3>
						<font color='red'>${requestScope.Err }</font>
					</h3>
				</div>
				<div class="center_align">
					<button type="submit" class="btn"
						style="width: 100%; background-color: rgb(156, 39, 176); color: white; padding: 10px; font-size: 18px;">Go
						to home</button>
				</div>
		</div>

		</form>
	</div>
	</div>
</body>
</html>
