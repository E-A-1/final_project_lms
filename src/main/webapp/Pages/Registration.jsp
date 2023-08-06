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
  background-image: url(https://img.freepik.com/free-vector/watercolor-abstract-purple-background_23-2149120778.jpg);
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

<body
	style="box-sizing: border-box; display: flex; justify-content: space-evenly; min-height: 100vh; margin: 0 auto;"
	class="reg_form">

	<div
		style="width: 100%; display: flex; justify-content: center; align-items: center;">
		<div class="card_style" style="z-index: 2;">
			<form name="Registration" action="AdminRegistration.do">

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
					<input type="text" class="input_style" name="email"
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
					<br>

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
