<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="Entities/default/css/styling.css">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css ">
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body style="background-color: #f2f2f2;">
	<div class="headBar">
		<div class="row">
			<div class="col-lg-12">
				<div class="textLeft" style="margin-top: 5px">
					<a class="headBarText" href="loggedin.jsp" title="Forumjam"><img
						class="headBarImage"
						src="Entities/default/pictures/logo-removebg-preview.png">
						<h5 style="margin-left: 60px; margin-top: -10px; color: #287650;">DiscussThing</h5>
					</a>
					<h5 style="margin-left: 60px;">
						<font color=287650>${diffPasswords} ${duplicateUsername}</font>
					</h5>
				</div>
			</div>
		</div>
	</div>
	<form action="loginorRegister" method="post"
		onsubmit="return checkInt()">

		<table
			style="background-color: f2f2f2; margin-left: 435px; margin-top: 190px; border-collapse: separate; border: solid green 2px; border-radius: 6px; -moz-border-radius: 6px;">

			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" required></td>
			</tr>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username" required>
			</tr>
			<tr>
				<td>Gender:</td>
				<td>Male <input type="radio" name="gender" value="Male">
					Female <input type="radio" name="gender" value="Female"></td>
			</tr>
			<tr>
				<td>StudentID:</td>
				<td><input type="text" name="id" id="id" required></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password_1" required></td>
			</tr>
			<tr>
				<td>Confirm Password:</td>
				<td><input type="password" name="password_2"></td>
			</tr>
			<tr>
				<td><input class="btn btn primary entityButton" type="submit"
					value="Register" style="margin-left: 180px; color: #287650;"></td></tr>
		</table>
	</form>

	<script>
		function checkInt() {
			var userID = document.getElementById("id").value;
			if (!isNaN(parseInt(userID))) {
				return true;
			} else {
				alert("Error! StudentID needs to be a number")
				return false;
			}
		}
	</script>


</body>
</html>