<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
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
</style>
</head>
<body>
<body class="reg_form">

	<div
		style="width: 100%; display: flex; justify-content: center; align-items: center; margin-top: 30px">
		<div class="small_card_style" style="z-index: 2;">
			<form action="index.jsp">
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