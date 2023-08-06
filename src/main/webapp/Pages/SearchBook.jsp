<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<!-- <link rel="stylesheet" href="extStylehome.css" /> -->
<link rel="stylesheet" href="extStylehome.css">

<title>Search Book</title>
<style>
a {
  text-decoration: none;
  font-family: monospace;
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

.input_container {
	padding-top: 5px;
	padding-bottom: 5px;
}

.reg_form {
	background-image:
		url(https://img.freepik.com/free-vector/watercolor-abstract-purple-background_23-2149120778.jpg);
	background-size: cover;
	z-index: -1;
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
	min-width: 300px;
}

.input_style {
	padding: 10px;
	border: 0;
	box-shadow: 0 0 15px 4px rgba(0, 0, 0, 0.06);
	border-radius: 10px;
	width: 100%;
}

.label_style {
	font-size: 16px;
	font-family: sans-serif;
}

body {
	padding: 0;
	margin: 0;
}
</style>
</head>
<body class="reg_form">
<header class="header_style">
		<span>
			<h3>
				LIBRARY MANAGEMENT SYSTEM <span style="padding: 0 15px;"><a
					href="..\Pages\index.jsp" class="header_button"> Home</a>
			</h3>
		</span> <span style="padding: 0 15px;"><a
			href="..\Pages\StudentLogin.jsp" class="header_button"> Sign Out</a>
		</span>
	</header>
	<div
		style="width: 100%; display: flex; justify-content: center; align-items: center; margin-top: 30px">
		<div class="small_card_style" style="z-index: 2;">
			<form action="SearchBook.do">
				<div class="center_align">
					<h1>
						<strong> Search Book </strong>
					</h1>
				</div>
				<label class="center_align">
					<h3>Enter Book Name</h3>
				</label>
				<div class="input_container center_align">
					<input type="text" class="input_style" name="searchTerm" required />
				</div>
				<div class="center_align" style="padding-top: 10px;">
					<button type="submit" class="btn"
						style="background-color: rgb(156, 39, 176); color: white; padding: 10px; font-size: 18px;">Search
						Book</button>
				</div>
		</div>

		</form>
	</div>

</body>
</html>

