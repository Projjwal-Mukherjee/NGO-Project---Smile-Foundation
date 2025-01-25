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
			rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
		/>
		
		<link
			rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
			integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
			crossorigin="anonymous"
			referrerpolicy="no-referrer"
		/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<!-- Font Awsome CDN -->
		<link rel="stylesheet" href="our_works_style.css" />
		<link rel="stylesheet" href="footer.css" />
		<link rel="stylesheet" href="header.css" />
		<!-- <link rel="stylesheet" href="responsive_ourWorks.css"> -->
	</head>
	<body id="body" onload="responsive()">
		<!-- header -->
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
						<span id="home"><a href="#"> Our Works</a></span>
						<span><a href="Donation/donate.jsp"> Donation </a></span>
						<span><a href="services.jsp"> Our Services</a></span>
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
				><a href="home.jsp" > Home </a></span
			>
			<span><a href="aboutUs.jsp"> About Us</a></span>
			<span><a href="#" style="color: rgb(0, 255, 229)"> Our Works</a></span>
			<span><a href="#"> Donation </a></span>
			<span><a href="#"> Our Service</a></span>
			<span><a href="contactUs.jsp"> Contact Us </a></span>
			<%if(flag != null){ %> 
			<span><a href="menu.jsp" class="minimize_profile none">Profile</a></span>
			<%}else{ %>
				<span><a href="JoinUs.jsp" class="minimize_profile ">Login / SignUp</a></span>
			<%} %>
		</section>
		
		<!-- main -->
		<div class="our_works_main">
			<div class="heading">
				<h1>Our Works</h1>
			</div>
			<div class="works_details_box">
				<div id="education" class="box">
					<div id="imageone" class="image_box"></div>
					<div class="detail_heading">
						<h2>EDUCATION</h2>
						<p>
							A metaphorical approach that portrays education as a bridge
							connecting people to opportunities, growth, and
							understanding.Focusing on the lifelong journey of learning and
							personal development. It conveys the idea that education extends
							beyond formal schooling.
						</p>
					</div>
				</div>
				<div id="health_care" class="box">
					<div id="imagetwo" class="image_box"></div>
					<div class="detail_heading">
						<h2>HEALTH CARE</h2>
						<p>
							NGOs work tirelessly to bridge gaps and reach underserved
							populations, ensuring that healthcare is accessible to all.NGOs
							operate clinics, mobile health units, and community health
							programs, making a tangible impact on people’s lives.
						</p>
					</div>
				</div>
				<div id="Women_empowerment" class="box">
					<div id="imagethree" class="image_box"></div>
					<div class="detail_heading">
						<h2>WOMEN EMPOWERMENT</h2>
						<p>
							“As women achieve power, the barriers will fall. As society sees
							what women can do, as women see what women can do, there will be
							more women out there doing things, and we’ll all be better off for
							it.” —Sandra Day O’Connor
						</p>
					</div>
				</div>
				<div id="waste_food_management" class="box">
					<div id="imagefour" class="image_box"></div>
					<div class="detail_heading">
						<h2>WASTE FOOD MANAGEMENT</h2>
						<p>
							Sustainable Management of Food is an approach that aims to reduce
							wasted food and its associated impacts throughout its entire life
							cycle. This life cycle includes the use of natural resources,
							manufacturing, sales, consumption, and decisions regarding
							recovery or final disposal.
						</p>
					</div>
				</div>
				<div id="ambulance" class="box">
					<div id="imagefive" class="image_box"></div>
					<div class="detail_heading">
						<h2>EMERGENCY AMBULANCE SERVICE</h2>
						<p>
							The Edhi Ambulance Service, operated by the Edhi Foundation, is
							one of the oldest and largest ambulance services globally. It
							functions as a charity and non-profit service, providing emergency
							medical transportation.
						</p>
					</div>
				</div>
				<div id="flood_disaster" class="box">
					<div id="imagesix" class="image_box"></div>
					<div class="detail_heading">
						<h2>DISASTER RESPONSE</h2>
						<p>
							Certainly! Smile Foundation, as a dedicated NGO, plays a crucial
							role in disaster management and relief across India.India, being a
							disaster-prone country, faces various natural calamities due to
							its geographical positioning. Earthquakes, floods, cyclones, and
							droughts pose significant risks
						</p>
					</div>
				</div>
				<div id="privillage_children" class="box">
					<div id="imageseven" class="image_box"></div>
					<div class="detail_heading">
						<h2>PRIVILAGED CHILDREN</h2>
						<p>
							Privileged children are those who benefit from favorable
							circumstances, resources, and opportunities due to their social,
							economic, or familial background. These advantages provide them
							with a head start in life and contribute significantly to their
							overall well-being and development.
						</p>
					</div>
				</div>
			</div>
		</div>
		<br /><br />
		<!-- Footer -->
		<footer id="footer">
			<div class="footer_class">
				<div class="column1 column">
					<div class="nav_logo_footer"></div>
					<p>
						Your generous contribution can make a significant difference in a
						Child's life. Providing them with the opportunity to grow, learn and
						thrive.
					</p>
				</div>
				<div class="column2 column">
					<h3>HELPFUL LINKS</h3>
					<div class="column_two_text">
						<pre><i class="bi bi-chevron-right foot_i"></i>   <a href="#our_vision">Our Vision & Mission</a></pre>
						<pre><i class="bi bi-chevron-right foot_i"></i>   <a href="#privacy">Privacy Policy</a></pre>
						<pre><i class="bi bi-chevron-right foot_i"></i>   <a href="#donation_faqs">Donation Faqs</a></pre>
						<pre><i class="bi bi-chevron-right foot_i"></i>   <a href="#terms">Terms & Conditions</a></pre>
					</div>
				</div>
				<div class="column3 column">
					<h3>GET IN TOUCH</h3>
					<div class="column_third_text">
						<pre onclick="contactus()"><i class="bi bi-envelope-at-fill foot_i"></i> team.memebers04@gmail.com</pre>
						<pre onclick="contactus()"><i class="bi bi-envelope-at-fill foot_i"></i> smilefoundation832@gmail.com</pre>
						<pre onclick="contactus()"><i class="bi bi-envelope-at-fill foot_i"></i> donatesmile@gmail.com</pre>
						<p style="margin-top:5vh;"><i class="bi bi-gear-fill foot_i"></i> Support Team : 10am - 6pm</p>
					</div>
				</div>
				<div class="column4 column">
					<h3>CONNECT WITH US</h3>
					<div class="column_fourth_text">
						<pre><a href="https://www.facebook.com/profile.php?id=61570090449315">FACEBOOK</a>   <i class="bi bi-facebook foot_social" style="color: rgb(120, 120, 250);"></i></pre>
						<pre><a href="https://x.com/SmileFound832">TWITTER-x</a>  <i class="bi bi-twitter-x foot_social" style="color: #111;" ></i></pre>
						<pre><a href="#youtube">YOUTUBE</a>   <i class="bi bi-youtube foot_social" ></i></pre>
						<pre><a href="#telegram">TELEGRAM</a>   <i class="bi bi-telegram foot_social" class="tele" style="color: rgb(10, 209, 244);"></i></pre>
						<pre><a href="https://www.instagram.com/smilefoundation832/">INSTAGRAM</a>  <i class="bi bi-instagram foot_social" class="insta" style="color: pink;"></i></pre>
					</div>
				</div>
			</div>
			<div class="last_div">
				<pre
					class="last_text"
				>Copyright <i class="bi bi-c-circle"></i> 2024</pre>
			</div>
		</footer>
		<script src="header.js"></script>
	</body>
</html>
    