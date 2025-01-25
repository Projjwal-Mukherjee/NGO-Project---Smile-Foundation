<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true" %>    
    <%@page import="java.sql.*" %>  
    <%
    session.setAttribute("msg", null);
    %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Smile Foundation</title>
	<link rel="shortcut icon" href="Logo.png" type="image/x-icon" />
	
		<!-- Font Awesome Icons -->
  <link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
  integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
  crossorigin="anonymous"
  referrerpolicy="no-referrer"
/>
<link
			rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
		/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="header.css" />
		<link rel="stylesheet" href="services.css" />
	</head>
	<body id="body" onload="responsive()">
		<!-- <header>Our Services Page Header</header> -->

		<header id="" onload="responsive()">
			<div id="head-top">
				<div class="top-elements" id="top-element1">
					<span class="top-span1">
						<i
							class="fa-solid fa-location-dot"
							style="color: rgb(248, 44, 136)"
						></i>
						Sec-V, Kolkata: 700060,West Bengal
					</span>

					<span class="top-span1">
						<i class="fa-solid fa-phone" style="color: rgb(21, 244, 236)"></i>
						9876543210
					</span>
					<span class="top-span1">
						<i
							class="fa-regular fa-envelope"
							style="color: rgb(250, 89, 89)"
						></i>
						smilefoundation832@gmail.com
					</span>
				</div>
				<div class="top-elements">
					<a href="https://www.facebook.com/profile.php?id=61570090449315">
						<div class="top-icons" id="top-icon1">
							<i class="fa-brands fa-facebook" style="color: #316ff6;"></i>
						</div>
					</a>
					<a href="https://chat.whatsapp.com/IjJDOJKE1ul1ESL9i4wQ9k">
						<div class="top-icons" id="top-icon2">
							<i class="fa-brands fa-whatsapp" style="color: #25D366;"></i>
						</div>
					</a>
					<a href="https://www.instagram.com/smilefoundation832/">
						<div class="top-icons" id="top-icon3">
							<i class="fa-brands fa-instagram" style="color:  #d62976;"></i>
						</div>
					</a>
					<a href="https://x.com/SmileFound832">
						<div class="top-icons" id="top-icon4">
							<i class="fa-brands fa-x-twitter" style="color:	#fff;"></i>
						</div>
					</a>
				</div>
				<div class="login-signup">
				
						<!-- jsp checking -->
				
				
				<%
                String flag = (String)session.getAttribute("flag");
				System.out.println(flag);
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
            	if(flag != null)
            	{
            	%>
				
					<a href="#"
						><span
							>
							Welcome  <%out.print(username); %></span
						></a
					>
					
					<%
            		}else{
            		%>
						
						<a href="JoinUs.jsp"
						><span
							><i
								class="fa-solid fa-right-to-bracket"
								style="color: rgb(8, 126, 165); padding-right: 0.5vh"
							></i>
							Login / SignUp</span
						></a
					>
						
					<%} %>
					
				</div>
			</div>
			<div id="head-buttom">
				<nav>
					<div id="nav-logo">
						<img src="LOGO_White.png" alt="" />
						<div id="logo-name">
							Smile Foundation <br />
							<span> Let's Create Happiness</span>
						</div>
						<div id="menu">
							<i class="fa-solid fa-bars"></i>
						</div>
					</div>
					<div id="nav-contents">
						<span id="bd"><a href="home.jsp"> Home </a></span>
						<span><a href="aboutUs.jsp"> About Us</a></span>
						<span><a href="ourWorks.jsp"> Our Works</a></span>
						<span><a href="Donation/donate.jsp"> Donation </a></span>
						<span id="home"><a href="#"> Our Services</a></span>
						<span><a href="contactUs.jsp"> Contact Us </a></span>
					</div>
					<button onclick="donateAmount()">Donate Now</button>

				<%
               // String flag = (String)session.getAttribute("flag");
            	//String user = (String)session.getAttribute("username");
            	if(flag != null)
            	{
            	%>

					<!-- Dropdown menu -->
					<div id="profileImg">
						<div class="profile">
							<%if(flag=="admin"){ %>
								<img
								src="uploads/profileDefault.png"
								alt=""
								accept="image/jpg , image/jpeg , image/png"
								/>
							
							<%}else{ %>
							<img
								src="uploads/<%= img %>"
								alt=""
								accept="image/jpg , image/jpeg , image/png"
							/>
							<%} %>
						</div>
						<div class="parent-drop-menu">
							<div class="drop-menu">
								<h3><%out.print(user); %></h3>
								<p>Smile Member</p>
								<ul>
									
									<!-- <li>
										<i class="fa-regular fa-envelope"></i>
										<a href="#">Message</a>
									</li>
									<li>
										<i class="fa-solid fa-gear"></i>
										<a href="#">Settings</a>
									</li> -->
									<%
										if(flag=="admin"){%>
									<a href="admindashboard/admin.jsp">
									<li>
										<i class="bi bi-person-badge-fill"></i>
										Admin Contoller
									</li>
									</a>
										<%
										}else{
									%>
									<a href="UserProfile.jsp">
									<li>
										<i id="icon1" class="fa-regular fa-user"></i>
										Profile
									</li>
									</a>
									<a href="edit.jsp">
									<li>
										<i class="fa-solid fa-pen-to-square"></i>
										Edit
									</li>
									</a>
									<a href="help.jsp">
									<li>
										<i class="bi bi-info-circle"></i>
										Help
									</li>
									</a>
									<%
									}
									%>
									<a href="Logout.jsp">
									<li>
										<i class="fa-solid fa-right-from-bracket"></i>
										Logout
									</li>
									</a>
								</ul>
							</div>
						</div>
					</div>
							<!-- dropdown close -->
					
					<script>
			//Profile details
			let profile = document.querySelector(".profile");
			let drop_menu = document.querySelector(".drop-menu");

			profile.addEventListener("click", () => {
				drop_menu.classList.toggle("active");
			});

			window.addEventListener("mouseup", function (event) {
				if (
					event.target != drop_menu &&
					event.target.parentNode != drop_menu &&
					event.target != profile &&
					event.target.parentNode != profile
				) {
					drop_menu.classList.remove("active");
				}
			});

			//responsiveness of profile
			var media = window.matchMedia("(max-width: 1000px)");
			let x = document.getElementsByClassName("minimize_profile");

			function responsive() {
				var media = window.matchMedia("(max-width: 1000px)");
				if (media.matches) {
					x[0].classList.remove("none");
					x[0].classList.add("block");
				} else {
					x[0].classList.add("none");
				}
			}
			media.addEventListener("change", function () {
				responsive();
			});
		</script>
					
				<%
            		}
            	
            	%>
					
				</nav>
			</div>
		</header>
		<section id="navbar-menu">
			<span id="home"
				><a href="home.jsp"> Home </a></span
			>
			<span><a href="#" style="color: rgb(0, 255, 229)"> About Us</a></span>
			<span><a href="ourWorks.jsp"> Our Works</a></span>
			<span><a href="#"> Donation </a></span>
			<span><a href="#"> Our Service</a></span>
			<span><a href="contactUs.jsp"> Contact Us </a></span>
			<%if(flag != null){ %> 
			<span><a href="menu.jsp" class="minimize_profile none">Profile</a></span>
			<%}else{ %>
				<span><a href="JoinUs.jsp" class="minimize_profile ">Login / SignUp</a></span>
			<%} %>
		</section>


		<main>
			<div class="contentBox">
				<div class="items">
					<a href="EmergencyAmbulance.jsp">
						<img
							src="https://thumbs.dreamstime.com/b/dynamic-vector-illustration-ambulance-van-used-transporting-patience-can-be-as-logo-hospital-service-180140696.jpg"
							alt=""
						/>
						<div class="text">
							<h2>24/7 Ambulance Services</h2>
							<br /><span class="subText"
								>24/7 ambulance services provide round-the-clock emergency
								medical assistance to underprivileged communities, ensuring
								timely healthcare access for all.</span
							>
						</div>
					</a>
				</div>
				<br /><br /><br />

				<div class="items">
					<a href="Education.jsp">
						<img
							src="https://t4.ftcdn.net/jpg/03/02/34/87/360_F_302348715_DIundHA3SnsTwR2cIXMRjzxJsj9OXGYa.jpg"
							alt=""
						/>
						<div class="text">
							<h2>Educating Youths</h2>
							<br />
							<span class="subText"
								>Smile Foundation's child education programs provide quality
								education, nutrition, and wellness support to underprivileged
								children, helping them build a brighter future</span
							>
						</div>
					</a>
				</div>
				<br /><br /><br />

				<div class="items">
					<a href="womenHelpline.jsp">
						<img
							src="https://img.freepik.com/free-vector/call-center_24877-49036.jpg"
							alt=""
						/>
						<div class="text">
							<h2>Women Helpline</h2>
							<br /><span class="subText"
								>Women's helpline provides 24/7 support and assistance to women
								in need, ensuring their safety and well-being.</span
							>
						</div>
					</a>
				</div>
				<br /><br /><br />

				<div class="items">
					<a href="childHelplineForm.jsp">
						<img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDbSrSfW6Ct90au6RebnnkIkWJvVyAZJms36eynrijuTkhN1vPWGYgU1WK-694NK8X54E&usqp=CAU"
							alt=""
						/>
						<div class="text">
							<h2>Child Helpline</h2>
							<br /><span class="subText"
								>Child helpline offers 24/7 support and assistance to children
								in need, ensuring their safety and well-being.</span
							>
						</div>
					</a>
				</div>
				<br /><br /><br />

				<div class="items">
					<a href="MedicalEquip.jsp">
						<img
							src="https://cdn-icons-png.freepik.com/512/16848/16848706.png"
							alt=""
						/>
						<div class="text">
							<h2>Medical Requirements</h2>
							<br /><span class="subText">
								Supports hospitals by providing essential medical supplies and
								blood bank facilities to underprivileged communities, ensuring
								access to life-saving treatments.
							</span>
						</div>
					</a>
				</div>
				<br /><br /><br />
				<div class="items">
					<a href="Disaster.jsp">
						<img
							src="https://cdn-icons-png.flaticon.com/512/2634/2634585.png"
							alt=""
						/>
						<div class="text">
							<h2>Disaster Hands</h2>
							<br /><span class="subText"
								>Disaster response to provide immediate relief and support to
								communities affected by natural calamities, helping them rebuild
								their lives.</span
							>
						</div>
					</a>
				</div>
				<br /><br /><br />
			</div>
		</main>
		
		<script src="header.js"></script>
	</body>
</html>
    