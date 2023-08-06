<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Student Registration</title>
    <style>
 input[type="submit"] {
        background-color: pink;
        border: none;
        color: black;
        padding: 8px 16px;
        text-decoration: none;
        margin: 4px 2px;
        cursor: pointer;
      }


    </style>
</head>

<body style="box-sizing: border-box;display: flex;justify-content: space-evenly;min-height: 100vh;margin: 0 auto;">
    <div style="width: 50%;background-color: black;">
   
    </div>
    <div style="width:50%;display: flex;justify-content: center;">
       
        <form name="Registration"  style="border-bottom: 2px solid black"   action="AdminRegistration.do" >
            <div style="padding: 20px;font-weight: bold;font-size: 30px;">Student Registration Form
            </div>
            <div style="padding: 10px;">
                <label style="font-size:20px ;">Id :</label>
                <input type="text" name="adminId" placeholder="Enter Id" required />
            </div>

            <div style="padding: 10px;">
                <label style="font-size:20px ;">Password :</label>
                <input type="Password" name="password" placeholder="Enter password" required/>
            </div>

            <div style="padding: 10px;">
                <label style="font-size:20px ;">Name :</label>
                <input type="text" name="name" placeholder="Enter  name" required/>
            </div>
            <div style="padding: 10px;">
                <label style="font-size:20px ;">Email :</label>
                <input type="text" name="email" placeholder="Enter email" required/>
            </div>
            <div style="padding: 10px;">
                <label style="font-size:20px ;">Contact No :</label>
                <input type="text" name="contactNo" placeholder="Enter contact No" required/>
            
            <div style="padding: 10px;">
                <label style="font-size:20px ;">Role:</label>
                <input type="radio" value ="admin" name="role" required>Admin</input>
                <input type="radio" value ="student" name="role">Student</input>
               
            </div>

            

            <div style="display: flex;justify-content:end;padding: 10px;">
                <input type="Submit" name="Register" value="Register">
            </div>
        </form>
    </div>
</body>

</html>
