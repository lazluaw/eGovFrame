<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

	<form action="/action_page.php" style="border: 1px solid #ccc">
		<div class="container">
			<h1>Sign Up</h1>
			<p>Please fill in this form to create an account.</p>
			<hr>
				<label for="userEmail"><b>Email</b></label> <input id="userEmail"
					type="text" placeholder="Enter userEmail" name="userEmail" required>

				<label for="userId"><b>ID</b></label> <input id="userId" type="text"
					placeholder="Enter userId" name="userId" required> <label
					for="userPassword"><b>Password</b></label> <input id="userPassword"
					type="password" placeholder="Enter userPassword"
					name="userPassword" required> <label
					for="userPassword-repeat"><b>Repeat Password</b></label> <input
					type="password" placeholder="Repeat userPassword"
					name="userPassword-repeat" required>
			<label> <input type="checkbox" checked="checked"
				name="remember" style="margin-bottom: 15px"> Remember me
			</label>

			<div class="clearfix">
				<button id="cancel_btn" type="button" class="cancelbtn">Cancel</button>
				<button id="signup_btn" type="submit" class="signupbtn">Sign
					Up</button>
			</div>
		</div>
	</form>

</body>
</html>
<script src="${javascript}/store/user.js "></script>
<script>
	document.getElementById('signup_btn').addEventListener(
			'click',
			function(e) {
				e.preventDefault()
				user.init()
				user.join({
					'userId' : document.getElementById('userId').value,
					'userEmail' : document.getElementById('userEmail').value,
					'userPassword' : document.getElementById('userPassword').value
				})
			})
</script>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}

/* Extra styles for the cancel button */
.cancelbtn {
	padding: 14px 20px;
	background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
	float: left;
	width: 50%;
}

/* Add padding to container elements */
.container {
	padding: 16px;
}

/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
	.cancelbtn, .signupbtn {
		width: 100%;
	}
}
</style>