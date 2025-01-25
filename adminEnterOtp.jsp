<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true"%>
<%@page import="java.util.*" %>
<%
String error = (String)session.getAttribute("error2");
String otp = (String)session.getAttribute("otp");
String email = (String)session.getAttribute("emailVal");
String reload = (String)session.getAttribute("reload");
if(otp==null){otp = "123";}
String encodedString = Base64.getEncoder().encodeToString(otp.getBytes());
System.out.println(otp);

%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Forgot Password ?</title>
	<link rel="shortcut icon" href="Logo.png" type="image/x-icon" />
		<link
			href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css"
			rel="stylesheet"
		/>

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
				height: fit-content;
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
				width: 24vh;
				color: #fff;
				background-color: #316ff6;
				border: 0.3vh solid rgb(0, 48, 116);
				border-radius: 0.5vh;
				padding: 0.5vh;
				cursor: pointer;
			}
			.error {
				color: red;
				font-size: 2.5vh;
				
			}
		</style>
	</head>
	<body>
		
		<main>
			<div class="container">
				<h1>OTP Sent to your Email !!</h1>
				
				<form action="<%=request.getContextPath()%>/adminResetPassServlet" method="post">
					<label for="enter"> Enter OTP : </label>
					<input type="text" name="enter" id="enter" /> <br />
					<button type="submit" onclick="checkOtp()">Reset Password</button>
					
					
					<input name="approval" id="approval" value="" hidden/>
					<input name="email" id="approval" value="<%=email %>" hidden/>
				</form>
				<%
					if(error == "true"){
				%>
					<p id="errorMessage" class="error">Incorrect OTP!</p><a href="adminEnterEmail.jsp">Regenerate OTP</a>
					
					
				<% } 
					
				   else if(reload == "true" ) {%>
					<a href="adminEnterEmail.jsp">Regenerate OTP</a>
					<script type="text/javascript">
						alert("OTP Expired!");
					</script>
				<% } 
					
					else{%>
					
					<span style="color: #11111193">
						<i class="ri-timer-line"></i> :
						<span class="timer" id="timer">05 : 00</span>
						<p style="font-size:2vh;">Please do not refresh the page...</p>
					</span>
				<% } %>
			</div>
		</main>
		<script>
			// Countdown Timer for OTP
			let timeLeft = 300; // 5 minutes in seconds
			const timerDisplay = document.getElementById("timer");

			function updateTimer() {
				const min = Math.floor(timeLeft / 60);
				const sec = timeLeft % 60;
				let padMin = String(min).padStart(2, "0");
				let padSec = String(sec).padStart(2, "0");
				timerDisplay.textContent = padMin + " : " + padSec;
				if (timeLeft <= 0) {
					clearInterval(timerInterval); //clearInterval() stops the repeated execution that was started by setInterval().
					
					<%
					session.setAttribute("emailVal",null);
					session.setAttribute("otp", null);
					%>
					window.location.href = "enterEmail.jsp";
					alert("OTP Expired");
				} else {
					timeLeft--;
				}
			}
			const timerInterval = setInterval(updateTimer, 1000);
			
			//check otp
			function checkOtp(){
				
				
				let otp = document.getElementById("enter").value;
				let y = String(btoa(otp));
	
				if(y.match("<%= encodedString%>")){
					document.getElementById("approval").value = "approved";
				}
				else{
					document.getElementById("approval").value = "rejected";
				}
				//check++;
			}
			
		</script>
		<%session.setAttribute("reload","true"); %>
	</body>
</html>
    