<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
String email = (String)session.getAttribute("emailVal");
System.out.println("Enter password email="+email);
%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Smile Foundation</title>
		<link rel="shortcut icon" href="Logo.png" type="image/x-icon" />

		<style>
			@import url("https://fonts.googleapis.com/css2?family=Cedarville+Cursive&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
			* {
				margin: 0%;
				padding: 0%;
				box-sizing: border-box;
				font-family: "Poppins", sans-serif;
			}

			html,
			body {
				height: 100%;
				width: 100%;
				background-color: azure;
			}

			main {
				height: 85vh;
				width: 100%;
				padding: 0vh 5vh 3vh 5vh;
				display: flex;
				justify-content: center;
				align-items: center;
			}

			main .container {
				height: 60vh;
				width: 100vh;
				border: 0.3vh solid #11111129;
				border-radius: 1vh;
				background-color: rgba(255, 255, 255, 0.455);
				font-size: 3vh;
				font-weight: 300;
				padding: 3vh;
				text-align: center;
			}

			main .container h1 {
				font-size: 4.5vh;
				text-align: center;
			}

			main .container form {
				height: 30vh;
				width: 100%;
				margin-top: 10vh;
				align-content: center;
			}

			main .container form input {
				padding: 1vh 2vh;

				width: 50%;
				margin-left: 3vh;
				border: 0.3vh solid #11111174;
				border-radius: 1vh;
				font-size: 2.6vh;
			}

			main .container form button {
				font-size: 2.6vh;
				margin-top: 3vh;
				font-weight: 300;
				width: 15vh;
				color: #fff;
				background-color: rgb(0, 160, 144);
				border: 0.3vh solid black;
				border-radius: 0.5vh;
				padding: 0.5vh;
				cursor: pointer;
			}

			.error {
				color: red;
				font-size: 2vh;
				margin-top: 1vh;
			}
		</style>
	</head>
	<body>
		<main>
			<div class="container">
				<h1>RE-SET PASSWORD :</h1>
				<form action="<%=request.getContextPath()%>/resetPasswordServlet" id="resetPasswordForm" method="post">
					<label for="newPassword">Enter New Password: </label
					><input type="password" id="newPassword" name="newPassword" /><br /><br />
					<label for="confirmPassword" style="margin-left: 3vh"
						>Re-Type Password: </label
					><input
						type="password"
						id="confirmPassword"
						name="confirmPassword"
					/><br />
					<input name="email" value="<%=email %>" hidden />
					<input name="approval" id="approval" value="reset" hidden/>
					<button type="submit">Reset</button>
					<p id="errorMessage" class="error"></p>
					<br />
					
					Dont't have an account?<a href="JoinUs.jsp">Register Now</a>
				</form>
			</div>
		</main>

		<script>
			function validatePassword(password) {
				const passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{6,}$/;
				return passwordRegex.test(password);
			}

			document
				.getElementById("resetPasswordForm")
				.addEventListener("submit", function (event) {
					

					// Get the password and confirm password values
					const newPassword = document.getElementById("newPassword").value;
					const confirmPassword =
						document.getElementById("confirmPassword").value;
					const errorMessage = document.getElementById("errorMessage");

					// Clear any previous error messages
					errorMessage.textContent = "";

					// Check if the passwords match
					if (newPassword !== confirmPassword) {
						errorMessage.textContent = "Passwords do not match!";
						event.preventDefault(); // Prevent form from submitting 
						return;
					}

					// Validate the password
					if (!validatePassword(newPassword)) {
						errorMessage.textContent =
							"Password must contain at least 6 characters, including 1 uppercase letter, 1 number, and 1 special character.";
						event.preventDefault(); // Prevent form from submitting
						return;
					}
					alert("Your password is successfully changed!");
				});
		</script>
	</body>
</html>
    