<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

    <!-- <link rel="stylesheet" href="extStylehome.css" /> -->
    <title>Search Book</title>
  </head>
  <body>
    <div id="form">
      <a href="..\Pages\index.jsp" style="color: #000099">Home </a>
      <a href="..\Pages\AdminLogin.jsp" style="float: right">Log Out</a><br />
      <center>
        <h1 align="center" style="color: #2f1a91">
          <strong><i>Search Book</i></strong>
        </h1>
        <hr color="#7d7a88" />
        <h2>Search Book</h2>
        <form action="SearchBook.do">
          <table>
            <tr>
              <td><input type="text" name="searchTerm" required /></td>
            </tr>

            <tr>
              <td colspan="2" align="center">
                <input
                  type="submit"
                  value="Search Book"
                  style="color: black; background-color: blueviolet"
                />
              </td>
            </tr>
          </table>
        </form>
      </center>
    </div>
  </body>
</html>

