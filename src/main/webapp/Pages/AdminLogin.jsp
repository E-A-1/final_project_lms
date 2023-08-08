<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Admin Login</title>
<link rel="stylesheet" href="extStylehome.css">

<link rel="stylesheet" href="extStyleadminlogin.css" type="text/css" />
</head>

<style>
.reg_form {
	background-image:
		url(https://img.freepik.com/free-vector/watercolor-abstract-purple-background_23-2149120778.jpg);
	background-size: cover;
	z-index: -1;
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

.header_button {
	padding: 2px 5px;
	background-color: white;
	color: rgb(156, 39, 176);
	font-family: "Times New Roman";
	font-weight: bold;
}

.card_style {
	box-shadow: 0 0 15px 4px rgba(0, 0, 0, 0.06);
	border-radius: 10px;
	padding: 30px;
	background-color: white;
	min-width: 300px;
}

.input_container {
	padding-top: 5px;
	padding-bottom: 5px;
}

.label_style {
	font-size: 16px;
	font-family: sans-serif;
}

.input_style {
	padding: 10px;
	border: 0;
	box-shadow: 0 0 15px 4px rgba(0, 0, 0, 0.06);
	border-radius: 10px;
	width: 100%;
}

.center_align {
	display: flex;
	justify-content: center;
	align-items: center;
}

body {
	padding: 0;
	margin: 0;
}
</style>
<script type="text/javascript">
function validateAdminLogin() {
  var numberPattern = /^[0-9]+$/;

  if (
    !numberPattern.test(document.querySelector('input[name="admin_id"]').value)
  ) {
    alert("Id should have only numbers");
    return false;
  }

  if (
    document.querySelector('input[name="password"]').value.length < 5 ||
    document.querySelector('input[name="password"]').value.length > 10
  ) {
    alert("Password length should be greater than 5 and less than 10");
    return false;
  }

  return true;
}
</script>
<body class="reg_form">
	<header class="header_style"> <span>
		<h3>
			Library Management System <span style="padding: 0 15px;"> <a
				class="header_button" href="index.jsp"> Home</a>
		</h3></header>



	<div
		style="width: 100%; display: flex; justify-content: center; align-items: center; margin-top: 20px">
		<div class="card_style" style="z-index: 2;">
			<form action="AdminLogin.do"  onsubmit="return(validateAdminLogin())">
				<div class="center_align">

					<div colspan="2">
						<c:if test="${requestScope.Err!=null}">
							<font color="red">${requestScope.Err}</font>
						</c:if>
					</div>
				</div>
				<div class="center_align">
					<h1>
						<strong>Admin Login Portal</strong>
					</h1>
				</div>
				<label class="label_style">Enter Admin Id </label>
				<div class="input_container">
					<input type="text" class="input_style" name="admin_id"
						placeholder="Enter Admin Id" required />
				</div>
				<label class="label_style ">Enter Password </label>
				<div class="input_container">
					<input type="password" class="input_style" name="password"
						placeholder="Enter password" required />
				</div>
				
				<div class="center_align">
					<button type="submit" class="btn"
						style="width: 100%; background-color: rgb(156, 39, 176); color: white; padding: 10px; font-size: 18px;">Login</button>
				</div>
		</div>

		</form>
	</div>
	</div>
</body>
</html>