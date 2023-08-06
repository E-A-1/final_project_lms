<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="extStylehome.css">
<style >
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
.reg_form {
  background-image: url(https://img.freepik.com/free-vector/watercolor-abstract-purple-background_23-2149120778.jpg);
  background-size: cover;
  z-index: -1;
}
.small_card_style {
  box-shadow: 0 0 15px 4px rgba(0, 0, 0, 0.06);
  border-radius: 10px;
  padding: 20px;
  background-color: white;
  min-width: 500px;
}
a {
  text-decoration: none;
  font-family: monospace;
}
.center_align {
  display: flex;
  justify-content: center;
  align-items: center;
}
body{
padding:0;
margin:0;
}
</style>
</head>
<body>

<header class="header_style"> <span>
		<h3>
			LIBRARY MANAGEMENT SYSTEM <span style="padding: 0 15px;"><a
				href="..\Pages\adminhome.jsp" class="header_button"> Home</a>
		</h3>
	</span> <span style="padding: 0 15px;"><a
		href="..\Pages\AdminLogin.jsp" class="header_button"> Sign Out</a> </span>
	</header>  
    

<div  style="width:100%;display: flex;justify-content: center;align-items: center;margin-top:30px">
        <div class="small_card_style" style="z-index: 2;">
        <form action="adminhome.jsp">
            <div class="center_align">
            <h1 >
                <strong>&#x2705; Success </strong>
              </h1>
            </div>
            <div class="center_align">  <h3>${requestScope.message}</h3></div>
                <div class="center_align" >
                    <button type="submit" class="btn" style="width:100%;background-color: rgb(156, 39, 176);color: white;padding: 10px;font-size: 18px;">Go to home</button></div>                </div>
 
        </form>
    </div>
</body>
</html>