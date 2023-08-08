<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="extStylehome.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Registration</title>
<style>
.reg_form {
	background-image:
		url(https://img.freepik.com/free-vector/watercolor-abstract-purple-background_23-2149120778.jpg);
	background-size: cover;
	z-index: -1;
}

.input_container {
	padding-top: 5px;
	padding-bottom: 5px;
}

.input_style {
	padding: 10px;
	border: 0;
	box-shadow: 0 0 15px 4px rgba(0, 0, 0, 0.06);
	border-radius: 10px;
	width: 100%;
}

.card_style {
	box-shadow: 0 0 15px 4px rgba(0, 0, 0, 0.06);
	border-radius: 10px;
	padding: 30px;
	background-color: white;
	min-width: 500px;
}

.label_style {
	font-size: 16px;
	font-family: sans-serif;
}
</style>
</head>
<script type="text/javascript">
function validateRegistrationForm() {
	console.log('called')
	var numberPattern = /^[0-9]+$/;
	if(!numberPattern.test(document.querySelector('input[name="id"]').value)){
		document.getElementById("vText").innerHTML =
		      "Only Number Format Allowed in Id";
	return false;
	
	
	}
	  if (
	    document.Registration.id && document.querySelector('input[name="id"]').value.length >9 ) 
	  {
		   document.getElementById("vText").innerHTML =
	      "Id should be less than 10 digit";
	    return false;
	  }

	  if (
	    document.Registration.password &&
	    (document.querySelector('input[name="password"]').value.length < 4 ||
	    		document.querySelector('input[name="password"]').value.length > 10)
	  ) {
	    document.getElementById("vText").innerHTML =
	      "Password length should be greater than 5 and less than 10 ";
	    return false;
	  }

	  if (document.Registration.name && document.querySelector('input[name="name"]').value.length > 20) {
	    document.getElementById("vText").innerHTML =
	      "Name should be less than 20 digit";
	    return false;
	  }
	  if (
	    document.Registration.contactNo &&
	    document.querySelector('input[name="contactNo"]').value.length < 8
	  ) {
	    document.getElementById("vText").innerHTML =
	      "Contact Number should be greater than 8  digit";
	    return false;
	  }
	  if(!numberPattern.test(document.querySelector('input[name="contactNo"]').value)){
			document.getElementById("vText").innerHTML =
			      "Only Number  Allowed in contactNo";
		return false;
		
		
		}
	  if (
	    document.Registration.role == "" ||
	    document.Registration.role == undefined
	  ) {
	    document.getElementById("vText").innerHTML = "Role should be selected";
	    return false;
	  }

	  return true;
	}

</script>
<body
	style="box-sizing: border-box; display: flex; justify-content: space-evenly; min-height: 100vh; margin: 0 auto;"
	class="reg_form">

	<div
		style="width: 100%; display: flex; justify-content: center; align-items: center;">
		<div class="card_style" style="z-index: 2;">
			<form name="Registration" action="AdminRegistration.do" onsubmit="return(validateRegistrationForm())">

				<div
					style="padding-bottom: 20px; font-weight: bold; font-size: 25px;"
					class="center_align">Registration Form</div>
				<label class="label_style"> Id </label>
				<div class="input_container">
					<input type="text" class="input_style" name="id"
						placeholder="Enter Id" required />
				</div>
				<label class="label_style ">Password </label>
				<div class="input_container">
					<input type="Password" class="input_style" name="password"
						placeholder="Enter password" required />
				</div>
				<label class="label_style">Name </label>
				<div class="input_container">
					<input type="text" class="input_style" name="name"
						placeholder="Enter name" required />
				</div>
				<label class="label_style">Email </label>
				<div class="input_container">
					<input type="email" class="input_style" name="email"
						placeholder="Enter email" required />
				</div>
				<label class="label_style">Contact No </label>
				<div class="input_container">
					<input type="text" class="input_style" name="contactNo"
						placeholder="Enter contact No" required />
				</div>
				<label class="label_style">Role</label>
				<div class="input_container">
					<span style="padding-left: 5px; padding-right: 5px;"> <input
						type="radio" value="admin" name="role" required> <span
						style="padding: 5px">Admin</span> </input>
					</span> <input type="radio" value="student" name="role"> <span
						style="padding: 5px">Student</span> </input>
				</div>
				<div>
					<br> <font color='red'>
						<div id="vText"></div>
					</font>
					<div class="center_align">
						<button type="submit" class="btn"
							style="width: 100%; background-color: rgb(156, 39, 176); color: white; padding: 10px;">Register</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>

</html>
