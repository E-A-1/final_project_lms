<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="extStylehome.css">
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
</head>
<body     class="reg_form">
 <header class="header_style"> <span>
		<h3>
			LIBRARY MANAGEMENT SYSTEM <span style="padding: 0 15px;"><a
				href="..\Pages\adminhome.jsp" class="header_button"> Home</a>
		</h3>
	</span> <span style="padding: 0 15px;"><a
		href="..\Pages\index.jsp" class="header_button"> Sign Out</a> </span>
	</header>  
    
    
    <div style="width:100%;display: flex;justify-content: center;align-items: center;margin-top:30px">
        <div class="small_card_style" style="z-index: 2;">
        <% String isbn =request.getParameter("isbn");%>
        <form action="DeleteBook.do">
                <div class="center_align">
                    <h1>
                        <strong> Delete Book </strong>
                    </h1>
                </div>
                <label class="center_align"> <h3> Enter Book ISBN no : </h3> </label>
                <div class="input_container">
                    <input type="text" class="input_style" name="isbn" value= "<%=isbn%>" readonly required="required"/>
                </div>
                <div class="center_align">
                    <button type="submit" class="btn"
                        style="background-color: rgb(156, 39, 176);color: white;padding: 10px;font-size: 18px;">Confirm</button>
                </div>
        </div>

        </form>
    </div>
    </div>
</body>

</html>