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
		<style>
			body {
				background: radial-gradient(
					circle at 18.7% 37.8%,
					rgb(250, 250, 250) 0%,
					rgb(225, 234, 238) 90%
				);
			}
			.gradient-custom {
				/* fallback for old browsers */
				background: #f6d365;

				/* Chrome 10-25, Safari 5.1-6 */
				background: -webkit-linear-gradient(
					to right bottom,
					rgba(246, 211, 101, 1),
					rgba(253, 160, 133, 1)
				);

				/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
				background: linear-gradient(
					to right bottom,
					rgba(246, 211, 101, 1),
					rgba(253, 160, 133, 1)
				);
			}

			.hero {
				margin-top: 6vh;
				display: flex;
				align-items: center;
				justify-content: center;
			}
			.photocard {
				background: #f6d365;

				/* Chrome 10-25, Safari 5.1-6 */
				background: -webkit-linear-gradient(
					to right bottom,
					rgba(246, 211, 101, 1),
					rgba(253, 160, 133, 1)
				);

				/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
				background: linear-gradient(
					to right bottom,
					rgba(246, 211, 101, 1),
					rgba(253, 160, 133, 1)
				);
			}
			/* .card h1 {
				font-weight: 10;
				color: #000;
			} */
			.img {
				/* display: flex; */
				/* margin: 0 auto; */
				display: flex;
				justify-content: center;
				align-items: center;
				width: 150px;
				height: 150px;
				border-radius: 50%;
				/* margin-top: 40px;*/
				margin-bottom: 10px;
			}
			.inputimage {
				display: none;
			}
			label {
				text-align: center;
				padding: 2px;
				height: 28px;
				width: 110px;
				background: #e3362c;
				color: #fff;
				margin: 12px auto;
				border-radius: 5px;
				cursor: pointer;
			}
			@media screen and (max-width: 500px) {
				.col-md-4 {
					border-top-right-radius: 0.5rem;
					border-bottom-right-radius: 0.5rem;
				}
				.donate-btn {
					height: 15px;
					width: 8px;
					padding: 20px 50px;
				}
			}
			.donate-btn {
				display: flex;
				justify-content: center;
				align-items: center;
				text-align: center;
				height: 6vh;
				width: 8vw;
				color: #fff;
				background-color: #e74d0c;
				border: 1px solid #000;
				border-radius: 10px;
				box-shadow: 1px 2px 10px #221f1f;
				margin-top: 5vh;
				font-size: 20px;
				font-weight: 200;
			}
			
			/* header */
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
		</style>
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
			crossorigin="anonymous"
		/>
	</head>
	<body>
	
	<%
	try{ 
	String uname = (String)session.getAttribute("username"); 
	String password = (String)session.getAttribute("password");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world","root","projjwal@#123");
	PreparedStatement ps = conn.prepareStatement("select images.image_url,ngo_members.username,ngo_members.emailid from ngo_members inner join images on ngo_members.username=images.username where ngo_members.username=? and ngo_members.password=?"); 
	ps.setString(1,uname);
	ps.setString(2,password); 
	ResultSet rs = ps.executeQuery();
	while(rs.next()){ 
		String img = rs.getString(1);
		%>
	
		<div class="heading">
			<img src="LOGO_White.png" alt="" onclick="location.reload()" />
			<h3 class="heading-text">User Profile</h3>
		</div>
		
		
		<section class="vh-60" >
			<div class="container py-5 h-60">
				<div class="row d-flex justify-content-center align-items-center h-100">
					<div class="col col-lg-6 mb-4 mb-lg-0"  style="width: 80vw">
						<div class="card mb-3" style="border-radius: 0.5rem">
							<div class="row g-0">
								<div
									class="col-md-4 gradient-custom text-center text-white"
									style="
										border-top-left-radius: 0.5rem;
										border-bottom-left-radius: 0.5rem;
									"
								>
									<div class="hero">
										<div class="photocard">
											<input
												type="image"
												src="uploads/<%= img %>"
												class="img"
												id="profile"
											/>
											<!-- <label for="inputimage">select photo</label> -->

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
									<h5 style="margin-top: 3vh"><%out.print(rs.getString(2)); %></h5>
									<p style="color: #0b0a0a">User Name</p>
									<i class="far fa-edit mb-5"></i>
								</div>
								<div class="col-md-8">
									<div class="card-body p-4">
										<h6>Personal Information</h6>
										<hr class="mt-0 mb-4" />
										<div class="row pt-1">
											<div class="col-6 mb-3">
												<h6>Email</h6>
												<p class="text-muted"><% out.print(rs.getString(3));%></p>
											</div>
											<div class="col-6 mb-3">
												<h6>Position</h6>
												<p class="text-muted">Smile-member</p>
											</div>
										</div>
										<h6>Donate</h6>
										<hr class="mt-0 mb-4" />
										<div class="row pt-1">
										<!-- 	<div class="col-6 mb-3">
												<h6>Total Donation Amount</h6>
												<p class="text-muted">500₹</p>
											</div>  -->
											<div class="col-6 mb-3">
												<!-- <h6>Donate</h6> -->
												<p class="text-muted">
													To donate in our NGO organization click on the donate
													button
												</p>
												<button class="donate-btn" onclick="donateAmount();">
													Donate
												</button>
											</div>
										</div>
										<div class="d-flex justify-content-start">
											<a href="#!"
												><i class="fab fa-facebook-f fa-lg me-3"></i
											></a>
											<a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
											<a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	<%	;
	} 
	conn.close();
	}
	catch(SQLException e){ System.out.println("SQL error:"+e.getMessage()); }
	
		%>
	</body>
</html>
<script>
	function change_image() {
		let profile_pic = document.getElementById("profile");
		let input_pic = document.getElementById("inputimage");
		profile_pic.src = URL.createObjectURL(input_pic.files[0]);
	}
	
	function donateAmount(){
		window.location.href = "Donation/qrCode.jsp";
	}
</script>

