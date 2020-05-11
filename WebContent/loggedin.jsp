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
<title>DiscussThing Login</title>
</head>
<body style="background-color: #f2f2f2;">
	<div class="headBar">
		<div class="row">
			<div class="col-lg-12">
				<div class="textLeft" style="margin-top: 5px">
					<a class="headBarText" href="about.jsp" title="DiscussThing"><img
						class="headBarImage"
						src="Entities/default/pictures/logo-removebg-preview.png">
						<h5 style="margin-left: 60px; margin-top: -10px; color: #287650;">DiscussThing</h5>
					</a>
					<h5 style = "margin-left:60px;"><font color = 287650>${registeredMessage}</font></h5>
					<h5 style = "margin-left:60px;"><font color = 287650>${noUser}</font></h5>
				</div>
			</div>
		</div>
	</div>
	
	<form action="onlylogin" method="post">
		<table
			style="background-color: f2f2f2; margin-left: 525px; margin-top: 230px; border-collapse: separate; border: solid green 2px; border-radius: 6px; -moz-border-radius: 6px;">
			<tr>
				<td>
					</td>
				<td></td>
			</tr>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username" required></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password_1" required></td>
			</tr>

			<tr>
				<td><input type="submit" name="submit" value="Login"></td>
				<td><a class="btn btn primary entityButton"
					style="margin-left: 125px;" href="registration.jsp"><font
						color="287650">Register</font></a></td>
			</tr>

		</table>
	</form>
</body>
</html>