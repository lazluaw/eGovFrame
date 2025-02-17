<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h2>Login</h2>

<form action="/action_page.php" method="post">

	<div class="container">
		<label for="uname"><b>ID</b></label>
		<input id="userId" type="text" placeholder="Enter ID" name="id" required>
		<label for="psw"><b>Password</b></label>
		<input id="userPassword" type="password" placeholder="Enter Password" name="psw" required>

		<button id="login_btn" type="submit">Login</button>
		<label> 
			<input type="checkbox" checked="checked" name="remember"> Remember me
		</label>
	</div>
	<div class="container" style="background-color: #f1f1f1">
		<button type="button" class="cancelbtn">Cancel</button>
		<span class="psw">Forgot <a href="#">password?</a></span>
	</div>
</form>

<script src="${javascript}/store/user.js"></script>
<script>
	document.getElementById('login_btn').addEventListener('click',function(e){
		e.preventDefault()
		user.init()
		user.join({
			"userId": document.getElementById('userId').value,
			"userPassword": document.getElementById('userPassword').value
		})
	})
</script>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

form {
	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>