<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Sample Project</title>
    <style>
      a:link,
      a:visited {
        background-color: pink;
        color: black;
        padding: 14px 25px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
      }
    </style>
  </head>
  <body
    style="
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      margin: 0 auto;
    "
  >
    <h1>Hello Welcome !</h1>
    <h2>Choose any option from below</h2>

    <span style="padding: 20px; font-size: 20px"
      ><a href="BookRegister.jsp">Add book</a></span
    >
    <span style="padding: 20px; font-size: 20px"
      ><a href="DisplayBook.do?role=admin">List books</a></span
    >
    <span style="padding: 20px; font-size: 20px"
      ><a href="DisplayStudent.do">List student</a></span
    >
    
    <span style="padding: 20px; font-size: 20px"
      ><a href="ListRequest.do?action=open">Confirm Requests</a></span
    >
  </body>
</html>


