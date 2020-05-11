<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="Entities/default/css/styling.css">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css ">
<meta charset="ISO-8859-1">
<title>Assignment Report - DiscussThing</title>
</head>

<div class="headBar">
	<div class="row">
		<div class="col-lg-12">
			<div class="textLeft" style="margin-top: 5px">
				<img class="headBarImage"
					src="Entities/default/pictures/logo-removebg-preview.png">
				<h3>DiscussThing - A Message Board</h3>
				Click on below links to expand each heading.
			</div>

		</div>
	</div>
</div>


</head>


<body>


	<div id="category_1" class="row messageBoard messageMargin">
		<a href="#" onclick="showDiscussion(1);">
			<div class="col-lg-12 columnPad">
				<div class="textLeft">
					<h5 style="margin-top: 35px; margin-left: 5px; color: #287650;">Introduction</h5>
				</div>
			</div>
		</a>
	</div>



	<div id="category_discussion_1" class="row messagePad"
		style="display: none; margin-top: -20px;">
		<div class="col-lg-12">
			<table class="messageTable">
				<thead>
					<th style="margin-left: 25px;">This is a message board
						application with some discussion forum like features wherein users
						can login or register if not already registered and start
						discussions. The front end or the client side has been assembled
						with HTML, CSS & some javascript, whereas the server side
						programming has been done with the help of Servlets and JSPs. A
						MYSQL database schema has been used in conjunction with JDBC. The
						working features have been explained in the subsequent links.</th>
				</thead>
			</table>
		</div>
	</div>

	<div id="category_2" class="row messageBoard messageMargin">
		<a href="#" onclick="showDiscussion(2);">
			<div class="col-lg-12 columnPad">
				<div class="textLeft">
					<h5 style="margin-top: -15px; margin-left: 5px; color: #287650;">MySql
						Details</h5>
				</div>
			</div>
		</a>
	</div>

	<div id="category_discussion_2" class="row messagePad"
		style="display: none; margin-top: -20px;">
		<div class="col-lg-12">
			<table class="messageTable">
				<thead>
					<th style="margin-left: 25px;">The following sql commands have
						been used to create tables under the ee_user schema of the oracle
						mysql database:<br> CREATE TABLE users(<br> NAME
						varchar(220),<br> USERNAME varchar(220),<br> PASSWORD
						varchar(220),<br> GENDER char(10),<br> STUDENTID int)<br>
						<br> ALTER TABLE users<br> ADD PRIMARY KEY(USERNAME)<br>
						<br> CREATE table threads(<br> USERNAME varchar(220)<br>
						TITLE text(100)<br> DESCRIPTION text(600)<br> ) Note: I
						am not sure / forgot about the data-type size I kept for the title
						and description fields but it should be enough to hold a few lines
						of character strings.
					</th>
				</thead>
			</table>
		</div>
	</div>


	<div id="category_3" class="row messageBoard messageMargin">
		<a href="#" onclick="showDiscussion(3);">
			<div class="col-lg-12 columnPad">
				<div class="textLeft">
					<h5 style="margin-top: -15px; margin-left: 5px; color: #287650;">Functionality
						(What works)</h5>
				</div>
			</div>
		</a>
	</div>



	<div id="category_discussion_3" class="row messagePad"
		style="display: none; margin-top: -20px;">
		<div class="col-lg-12">
			<table class="messageTable">
				<thead>
					<th style="margin-left: 25px;">The application has a login
						page wherein the user may enter the credentials for login. Sample
						login details are given below: <br> Username: rishabhp513<br>
						Password: Moto$2099<br> The login page also has a
						registration button which may be clicked to register a new user
						into the user database. If an incorrect username or password is
						provided, it will automatically redirect to the registration page.
						The registration page is presented with a form with information
						like Name, Username, Gender, StudentID (which needs to be a
						number) and a case sensitive Password. <br> Once a user is
						logged in, they will be presented with an index page wherein they
						can see a visit counter on the top left corner and a hyperlink to
						see the <b>active things</b> link below the username. Clicking
						this link expands the page and shows all active discussions
						submitted by users. Towards the right, there will be a button that
						says Start Jamming to post a new topic and description. Once those
						fields have been filled in, it will redirect to a thread.jsp page
						where the user will be able to see their discussion posted along
						with the other topics posted by other users. The logout button
						takes the user back to the login page.
					</th>

				</thead>
			</table>
		</div>
	</div>

	<div id="category_4" class="row messageBoard messageMargin">
		<a href="#" onclick="showDiscussion(4);">
			<div class="col-lg-12 columnPad">
				<div class="textLeft">
					<h5 style="margin-top: -15px; margin-left: 5px; color: #287650;">Functionality
						(What Doesn't Work)</h5>
				</div>
			</div>
		</a>
	</div>

	<div id="category_discussion_4" class="row messagePad"
		style="display: none; margin-top: -20px;">
		<div class="col-lg-12">
			<table class="messageTable">
				<thead>
					<th style="margin-left: 25px;">The reply button on the index
						and the thread.jsp page doesn't work so users cannot post reply to
						a particular topic. The home button on the threads page redirects
						to the index page however, the Welcome message that displays the
						name of the logged in user doesn't show the name of the user
						anymore.</th>

				</thead>
			</table>
		</div>
	</div>

	<div id="category_5" class="row messageBoard messageMargin">
		<a href="#" onclick="showDiscussion(5);">
			<div class="col-lg-12 columnPad">
				<div class="textLeft">
					<h5 style="margin-top: -15px; margin-left: 5px; color: #287650;">Special
						Efforts / Extra Functionality</h5>
				</div>
			</div>
		</a>
	</div>

	<div id="category_discussion_5" class="row messagePad"
		style="display: none; margin-top: -20px;">
		<div class="col-lg-12">
			<table class="messageTable">
				<thead>
					<th style="margin-left: 25px;">Performed Form Validation on
						the Registration & Login Page through various constraints like:<br>
						1. Verify if the user exists in the database, if not ask the user
						to register. <br> 2. Student ID should be a number <br>
						3. Passwords should match<br> 4. Username should not be
						pre-existing in the database. <br> <br>Added some dynamic content
						to webpages using JavaScript & JQuery. For instance, the
						application doesn't redirect the user to a new page when they want
						to start a new discussion.<br> Also, performed session
						tracking by sending username of the user who logs in to the index
						page.
					</th>
				</thead>
			</table>
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