<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="javax.servlet.http.Cookie"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="Entities/default/css/styling.css">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css ">
<meta charset="ISO-8859-1">
<title>DiscussThing Message Board</title>
</head>

<div class="headBar">
	<div class="row">
		<div class="col-lg-12">
			<div class="textLeft" style="margin-top: 5px">
				<img class="headBarImage"
					src="Entities/default/pictures/logo-removebg-preview.png"> <font
					color=287650>No. of Visits ${message1}</font>

			</div>

			<div class="textRight">
				<a class="btn btn primary entityButton" href="loggedin.jsp?logout"
					title="DiscussThing" style="margin-top: 7px;">Logout</a>
			</div>
		</div>
	</div>
</div>

<body>
	<h5>Hi! ${message}</h5>
	<!-- Start of Forum Structure  -->
	<div class="container">
		<div class="row"></div>
	</div>

	<div id="category_1" class="row messageBoard messageMargin">
		<a href="#" onclick="showDiscussion(1);">
			<div class="col-lg-12 columnPad">
				<div class="textLeft">
					<h3 style="margin-top: 5px;">Click Here To See Active Things</h3>
				</div>
				<div class="textRight">
					<a id="startJammingButton_1" class="btn btn-primary entityButton"
						href="#" onclick="startJamming(1);">Start Jamming</a>
				</div>
			</div>
		</a>
	</div>

	<div id="category_new_discussion_1" class="row messagePad"
		style="display: none;">
		<div class="col-lg-12">
			<form action="ViewProfile" method="post">
				<div class="form-group">
					Title <input type="text" name="newDiscussionTopic_1"
						class="form-control" size="40"></input> <br> Content
					<textarea class="newDiscussion form-control" name="newDiscussion_1"
						rows="10" cols="50"></textarea>
					<input class="btn btn primary entityButton" type="submit"
						value="Submit" style="margin-top: 10px;">
				</div>
			</form>
		</div>
	</div>


	<div id="category_discussion_1" class="row messagePad"
		style="display: none;">
		<div class="col-lg-12">
			<table class="messageTable">

				<thead>

					<th>Discussion</th>

					<th class="textMiddle">Username</th>
					<th class="textRight" style="margin-right:-710px;">Description</th>
				</thead>
				<%
					try {
						request.getCookies();
						Class.forName("oracle.jdbc.driver.OracleDriver");
						Connection con = DriverManager.getConnection(
								"jdbc:oracle:thin:@ee417.c7clh2c6565n.eu-west-1.rds.amazonaws.com:1521:EE417", "ee_user",
								"ee_pass");
						Statement ps = con.createStatement();
						String sql = "SELECT * FROM threads";

						ResultSet rs = ps.executeQuery(sql);

						while (rs.next()) {
				%>

				<tr class="messageBoard">
					<td><a href="#"> <%
 	out.println(rs.getString("title"));
 %>
							<div class="textLeft" style="margin-top: 15px;">
								<a class="btn btn primary entityButton" href="#"
									style="font-weight: 200; margin-top: 10px;">Reply</a>
							</div>
					</a></td>
					<td><a class="textMiddle" style="margin-top: -10px;" href="#">
							<%
								out.println(rs.getString("username"));
							%>
					</a></td>
					<td class="textRight" style="margin-top: 20px">
						<%
							out.println(rs.getString("description"));
						%>
					</td>
				</tr>

				<%
					}
						con.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="textRight" style="padding-right: 15px;">
					<a class="label label-primary" href="#">See More</a>
				</div>
			</div>
		</div>
	</div>

</body>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<script src="Entities/default/javascript/message_home.js"
	type="text/javascript"></script>
</html>