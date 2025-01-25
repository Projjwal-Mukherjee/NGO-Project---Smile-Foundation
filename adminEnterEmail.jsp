<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true" %>
    <%
    String error = (String)session.getAttribute("error");
    
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
				height: 50vh;
				width: 100vh;
				border: 0.3vh solid #11111129;
				border-radius: 1vh;
				/* background-color: #fff; */
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
				margin-top: 3vh;
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
				width: 28vh;
				/* background-color: #316ff6;*/
				border: 0.3vh solid black;
				border-radius: 0.5vh;
				padding: 0.5vh;
				cursor: pointer;
			}
			#login {
				background-color: #ff5733;
				color: #fff;
			}
			#reset {
				background-color: #228b22;
				color: #fff;
			}
			.error {
				color: red;
				font-size: 2.5vh;
				margin-top: 4vh;
			}
		</style>
	</head>
	<body>
		<main>
			<div class="container">
				<h1>Enter your email address</h1>
				<form action="<%=request.getContextPath()%>/forgetPassAdminServlet" method="post">
					<label for="email">Email: </label
					><input type="text" id="email" name="email" /><br /><br />
					<button type="submit" id="reset" onclick="errorReset()">Get New Password</button>
					<button type="button" id="login" onclick="joinUs()">Back to Login</button>
					
					<%if(error=="true"){
					session.setAttribute("error", null);
					%>
					 <p id="errorMessage" class="error">
						You don't have an account, create an account first.
					</p> 
					<%}%> 
						
					
				</form>
			</div>
		</main>
		
		<script type="text/javascript">
			function joinUs(){
				window.location.href = "JoinUs.jsp";
			}
			function errorReset(){
				console.log("errorReset()");
				<% 
				
					session.setAttribute("error2","false");
					session.setAttribute("reload","false");
				%>
			}
		</script>
	</body>
</html>
    