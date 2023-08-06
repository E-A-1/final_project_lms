<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>LMS Index Page</title>

    <link rel="stylesheet" href="/LibManTest/src/main/webapp/Pages/extStylehome.css">

</head>
<style>
.reg_form {
  background-image: url(https://img.freepik.com/free-vector/watercolor-abstract-purple-background_23-2149120778.jpg);
 
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
.btn {
  padding: 10px;
  background-color: rgb(156, 39, 176);
  color: white;
  font-family: "Times New Roman";
}
a {
  text-decoration: none;
  font-family: monospace;
}

    body {

        margin: 0;
        padding: 0;
    }
</style>


    <body class="reg_form">
        <header class="header_style">
            <h3> Library Management System
            </h3>
        </header>
        <center>
            <h1> <strong> Welcome To Library Management System ! </strong> </h1>

            <br>
            <div>
                <h2 style="color:black"><strong><i>Registration</strong></i></h2>
                <a href="..\Pages\Registration.jsp" class="btn">Click Here For Registration</a>
                <br><br>
                <h2><i><strong>Student </strong></i></h2>
                <a href="..\Pages\StudentLogin.jsp" class="btn primary_color text_primary_color">Click Here For Student
                    Login</a>
                <br><br>
                <h2><i><strong>Admin </strong></i></h2>
                <a href="..\Pages\AdminLogin.jsp" class="btn">Click Here For Admin Login</a>
            </div>
            <br>
        </center>
    </body>


</html>
