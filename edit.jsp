<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true" %>    
<%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Smile Foundation</title>
		<link rel="shortcut icon" href="Logo.png" type="image/x-icon" />
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
			crossorigin="anonymous"
		/>
		<link
			rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
		/>
		<style>
			@import url("https://fonts.googleapis.com/css2?family=Playpen+Sans:wght@100..800&display=swap");
			@import url("https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Playpen+Sans:wght@100..800&display=swap");

			body {
				background: radial-gradient(
					circle at 18.7% 37.8%,
					rgb(250, 250, 250) 0%,
					rgb(225, 234, 238) 90%
				);
			}

			/* heading section */

			.heading {
				position: relative;
				display: flex;
				justify-content: center;
				align-items: center;
				border: 1px solid black;
				height: 15vh;
				width: 100%;
				background: linear-gradient(
					109.6deg,
					rgba(0, 0, 0, 0.93) 11.2%,
					rgb(63, 61, 61) 78.9%
				);
			}
			.heading-text {
				display: flex;
				justify-content: center;
				align-items: center;
				color: #fff;
				margin: 2vmin;
				font-size: 6vmin;
				font-weight: 300;
			}
			.heading img {
				left: 3vmin;
				top: 0;
				position: absolute;
				height: 15vh;
				object-fit: contain;
			}

			/* update section */
			form {
				height: 50vh;
				width: 100%;
				object-fit: cover;
			}
			.edit-container {
				height: 50vh;
				width: 100%;
				display: flex;
				margin: 5% 0;
			}
			.inputimage {
				display: none;
			}
			.edit-photo {
				display: flex;
				align-items: center;
				justify-content: center;
				border: 1px solid black;
				width: 40%;
				margin: 0 5%;
				background: radial-gradient(
					circle at 10% 20%,
					rgba(216, 241, 230, 0.46) 0.1%,
					rgba(233, 226, 226, 0.28) 90.1%
				);
				float: left;
			}
			.photocard {
				height: 35vh;
				width: 20vw;
				display: flex;
				flex-direction: column;
				text-align: center;
				align-items: center;
				justify-content: center;
				/* background-color: #d5d5d5; */
			}
			#profile {
				margin-bottom: 2vmin;
				border: 1px solid black;
				border-radius: 50%;
				/* height: 20vh;
	width: 10vw; */
				height: 140px;
				width: 140px;
			}
			.edit-input {
				display: flex;
				flex-direction: column;
				text-align: center;
				align-items: center;
				justify-content: center;
				border: 1px solid black;
				width: 40%;
				margin: 0 5%;

				background: radial-gradient(
					circle at 10% 20%,
					rgba(216, 241, 230, 0.46) 0.1%,
					rgba(233, 226, 226, 0.28) 90.1%
				);
				float: left;
			}
			.photo-btn {
				/* width: 8vw;
	height: 5vh; */
				width: 100px;
				height: 28px;
				border: 1px solid black;
				border-radius: 5px;
				color: #fff;
				background-color: #ff2626;
				cursor: pointer;
			}
			.photo-btn:hover {
				color: #ff0b0b;
				background-color: #fff;
			}

			.input-div {
				margin: 2vh 2vh;
			}
			.input-div label {
				margin: 0 2vw;
			}
			.submit-btn {
				height: 5vh;
				width: 80%;
				display: flex;
				justify-content: end;
				align-items: end;
				margin: 2vmin 0;
				right: 12vmin;
			}
			.submit-btn label {
				/* width: 7vw;
	height: 4.5vh; */
				width: 85px;
				height: 30px;
				margin: 0 1vmin;
				border: black;
			}
			.submit-btn-btn {
				display: flex;
				justify-content: center;
				align-items: center;
				text-decoration: none;
				/* width: 7vw;
	height: 4.5vh; */
				width: 85px;
				height: 30px;
				padding: 2vmin;
				border-radius: 5px;
			}
			
			.submit-btn a {
				text-decoration: none;
			}
			
			.check {
				color: #0ba360;
				background-color: #fff;
			}
			.check:hover {
				color: #fff;
				background: linear-gradient(to top, #0ba360 0%, #3cba92 100%);
				box-shadow: 0 1px 6px #008d00;
			}
			.cross {
				color: rgb(252, 56, 56);
				background-color: #fff;
				border:2px solid black;
			}
			.cross:hover {
				color: #fff;
				background: linear-gradient(
					111.3deg,
					rgb(252, 56, 56) 11.7%,
					rgb(237, 13, 81) 81.7%
				);
				box-shadow: 0 1px 6px #d10000;
			}

			/* Responsiveness */

			@media screen and (max-width: 1000px) {
				.edit-container {
					display: block;
					margin-top: 0;
				}
				form {
					/* margin-top: 0; */
					height: 500px;
				}
				.edit-photo {
					display: block;
					width: 100%;
					margin: 0;
					border: none;
				}
				.edit-input {
					/* display: block; */
					width: 100%;
					margin: 0;
					border: none;
				}
				.photocard {
					margin-left: 50px;
				}
				.profile {
					height: 150px;
					width: 150px;
				}
				.edit-input .input-div {
					margin-left: 0;
				}
				.heading {
					justify-content: flex-end;
					height: 12vh;
				}
				.heading img {
					height: 11vh;
					object-fit: contain;
				}
				/* .input-div {
		display: flex;
		align-items: start;
		justify-content: start;
	} */
			}
			.edit-input input:focus{
				outline: 1px solid green;
				box-shadow: 0 0 3px #00b600;
			}
			.not-error{
				outline: 1px solid green;
				box-shadow: 0 0 3px #00b600;
			}
			.error{
				outline: 1px solid red;
				box-shadow: 0 0 3px red;
				/*border: 1.5px solid red;
				border-radius:1px;*/
			}
		</style>
	</head>
	<body>
	
		<%
		String msg = "";
		msg = (String)session.getAttribute("msg");
		String user = (String)session.getAttribute("username");
    	
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world","root","projjwal@#123");
    	PreparedStatement ps = conn.prepareStatement("select images.image_url,ngo_members.username,ngo_members.emailid from ngo_members inner join images on ngo_members.username=images.username where ngo_members.username=? "); 
    	ps.setString(1,user);
    	 
    	ResultSet rs = ps.executeQuery();
    	String img = "";
    	String username = "";
    	String email = "";
    	while(rs.next()){ 
    		img = rs.getString(1);
    		username = rs.getString(2);
    		email = rs.getString(3);
    	}
    	conn.close();
    	System.out.println("edit.jsp - "+email);
		%>
	
	
		<div class="heading">
			<img src="LOGO_White.png" alt="" onclick="location.reload()" />
			<h3 class="heading-text">Update your profile...</h3>
		</div>

		<!-- username,email,photo, -->

		<form action="<%=request.getContextPath()%>/editServlet" method="post" enctype="multipart/form-data" >
			<div class="edit-container">
				<div class="edit-photo">
					<div class="photocard">
						<input
							type="image"
							src="uploads/<%= img %>"
							accept="image/jpg , image/jpeg , image/png"
							class="img"
							id="profile"
						/>
						<label class="photo-btn" for="inputimage">Select Photo</label>
						<input
							type="file"
							accept="image/jpg , image/jpeg , image/png"
							name="inputimage"
							id="inputimage"
							class="inputimage"
							onchange="change_image()"
						/>
					</div>
				</div>
				<div class="edit-input">
					<h5>Personal Information</h5>
					<div class="input-div">
						<label for="username">Username:</label
						><input
							class=""
							placeholder="Enter new username"
							type="text"
							value="<%= username %>"
							id="username"
							name="username"
						/>
					</div>
					<div class="input-div">
						<label for="email">Email:</label
						><input
							class=""
							placeholder="Enter new email-id"
							type="text"
							value="<%= email %>"
							id="email"
							name="email"
						/>
					</div>

					<div class="submit-btn">
						<label for="submit"
							><button class="submit-btn-btn check">
								<i class="bi bi-check-lg"></i> Submit
							</button></label
						>
						<input
							type="submit"
							value=""
							id="submit"
							name=""
							style="display: none"
						/>
						
						<a href="home.jsp"  class="submit-btn-btn cross">
							
								<i class="bi bi-x-lg"></i> Close
							
						</a>
					</div>
						<input type="text" name="oldurl" value="<%= img%>" style="display:none;"/>
						<input type="text" name="oldemail" value="<%= email %>" style="display:none;"/>
						<input type="text" name="oldusername" value="<%= username %>" style="display:none;"/>
					<div><p  style="color:red;"><%if(msg!=null){out.print(msg);%>
					<script> 
					let x = document.querySelectorAll(".edit-input .input-div input");
					console.log(x[0]);
					x[0].classList.add("error");
					x[1].classList.add("error");					
					</script> 
					<%}%>
					</p></div>
				</div>
			</div>
		</form>
	</body>
</html>

<script>
	function change_image() {
		let profile_pic = document.getElementById("profile");
		let input_pic = document.getElementById("inputimage");
		profile_pic.src = URL.createObjectURL(input_pic.files[0]);
	}
	let y = document.querySelectorAll(".edit-input .input-div input");
	y[0].addEventListener("change",function(){
		y[0].classList.add("not-error");
		y[0].classList.remove("error");
	});
	
	y[1].addEventListener("change",function(){
		y[1].classList.add("not-error");
		y[1].classList.remove("error");
	});
</script>
    