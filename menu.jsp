<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page session="true" %>    
<%@page import="java.sql.*" %>   

<%String user = (String)session.getAttribute("username"); %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Document</title>

		<style>
			/*  Boiler Plate */
			* {
				/* box-sizing: border-box; */
				text-align: center;
				font-family: monospace;
			}

			html,
			body {
				/* height: 100%;
				width: 100%; */
				overflow-x: hidden;

				background: linear-gradient(90deg, #e3ffe7 0%, #d9e7ff 100%);
			}
			.menu {
				text-align: center;

				background-size: auto;
				width: 100%;
				height: auto;
			}
			.menu .h3-border {
				border: 2px solid #111;
				border-radius: 10px;
				background: linear-gradient(90deg, #e3ffe7 0%, #d9e7ff 100%);
			}
			.menu h3 {
				text-align: center;
				font-size: 8vmin;
				font-weight: 200;
			}
			.menu p {
				text-align: center;
				font-size: 6vmin;
				font-weight: 200;
				padding-bottom: 5vh;
				border-bottom: 2px solid #111;
			}
			.menu li {
				text-align: center;
				list-style: none;
				font-size: 6vmin;
				font-weight: 300;
				width: auto;
				margin: 20px 0;
				margin-right: 10vw;
				border: 1px solid #111;
				border-radius: 5px;
				padding: 3vmin 0;
			}
			.menu li:hover {
				background: #232526; /* fallback for old browsers */
				background: -webkit-linear-gradient(
					to right,
					#414345,
					#232526
				); /* Chrome 10-25, Safari 5.1-6 */
				background: linear-gradient(
					to right,
					#414345,
					#232526
				); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
				color: #d9e7ff;
			}
			.menu ul li a {
				padding: 1.5vh 17.5vw;
				color: #111;
				text-decoration: none;
				font-family: monospace;
				font-size: 7vmin;
				font-weight: 200;
			}
			.menu ul li a:hover {
				color: #d9e7ff;
			}
			.menu ul li i {
				align-items: self-start;
			}
		</style>
		<link
			rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
			integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
			crossorigin="anonymous"
			referrerpolicy="no-referrer"
		/>
	</head>
	<body>
		<div class="menu">
			<div class="h3-border">
				<h3><%out.print(user); %></h3>
			</div>

			<p>Smile Member</p>
			<ul>
				<li>
					<a href="UserProfile.jsp"><i class="fa-regular fa-user"></i> Profile</a>
				</li>
				<li>
					<a href="edit.jsp"><i class="fa-solid fa-pen-to-square"></i> Edit</a>
				</li>
				
				<li>
					<a href="#"><i class="fa-solid fa-circle-question"></i> Help</a>
				</li>
				<li>
					<a href="Logout.jsp"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
				</li>
				<li>
					<a href="home.jsp"
						><i class="fa-sharp fa-solid fa-xmark"></i> Go back</a
					>
				</li>
			</ul>
		</div>
	</body>
</html>
 