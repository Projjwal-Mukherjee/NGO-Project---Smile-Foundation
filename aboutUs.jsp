<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    <%@page session="true" %>    
    <%@page import="java.sql.*" %>  
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	<link rel="stylesheet" href="footer.css" />
  <link rel="stylesheet" href="aboutUs.css">  <!--Link to the external CSS file -->
</head>
<body id="body" onload="responsive()">

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
						<span id="home"><a href="aboutUs.jsp"> About Us</a></span>
						<span><a href="ourWorks.jsp"> Our Works</a></span>
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

  <section class="hero">
    <div class="heading">
        <h1>About Us</h1>
    </div>
    <div class="container">
        <div class="hero-content">
            <h2>Welcome To Our Website</h2>
            <p>Our mission is to promote sustainable waste management practices that safeguard the environment and enhance public health. We are committed to reducing waste through education, advocacy, and community-driven initiatives that encourage recycling, composting, and responsible disposal.</p>
            <form method="post" action="Our Vision and  Mission PDF.pdf">
            	<button class="cta-button">Learn More</button>
            </form>
            
        </div>
        <div class="hero-image">
            <img src="about photo.jpg">
        </div>
    </div>
  </section>
  
  <h2 class="Heading">Our Team</h2>

		<div class="picBox">
			<div class="card">
				<img src="Member_Pics/swastik.jpg" alt="" />
				<h2>Swastik Biswas</h2>
				<p>SMILE Core Member <br /><br />Dept: <mark> Accountant</mark></p>
				<a href="#connectUs"><button>Connect</button></a>
			</div>

			<div class="card">
				<img src="Member_Pics/rupaa.jpeg" alt="" />
				<h2>Rupa Mistri</h2>
				<p>
					SMILE Core Member <br /><br />Dept: <mark> Educating Youth </mark>
				</p>
				<a href="#connectUs"><button>Connect</button></a>
			</div>

			<div class="card">
				<img src="Member_Pics/Ankan.jpg" alt="" />
				<h2>Ankan Baidya</h2>
				<p>
					SMILE Core Member <br /><br />Dept: <mark> Ambulance Service </mark>
				</p>
				<a href="#connectUs"><button>Connect</button></a>
			</div>

			<div class="card">
				<img src="Member_Pics/Sayantika.jpg" alt="" />
				<h2>Sayantika Mondal</h2>
				<p>SMILE Core Member <br /><br />Dept: <mark> Women's Safety </mark></p>
				<a href="#connectUs"><button>Connect</button></a>
			</div>

			<div class="card">
				<img src="Member_Pics/fresher.jpg" alt="" />
				<h2>Projjwal Mukherjee</h2>
				<p>
					SMILE Core Member <br /><br />Dept: <mark> Children's Welfare </mark>
				</p>
				<a href="#connectUs"><button>Connect</button></a>
			</div>
		</div>
  
  <!--    |||||||||||||||     FOOTER    ||||||||||||||||     -->

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