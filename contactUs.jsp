<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true" %>    
<%@page import="java.sql.*" %>  
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smile Foundation</title>
	<link rel="shortcut icon" href="Logo.png" type="image/x-icon" />
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="footer.css">
    <link rel="stylesheet" href="contact.css">
    <link
			rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
			integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
			crossorigin="anonymous"
			referrerpolicy="no-referrer"
		/>
		<link
			rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
		/>
    <script src="https://kit.fontawesome.com/aa7454d09f.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>



<body>

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
				String msg = (String)session.getAttribute("msg");
				System.out.println(msg);
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
						<span><a href="services.jsp"> Our Services</a></span>
						<span id="home"><a href="#"> Contact Us </a></span>
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
			<span><a href="ourWorks.jsp" > Our Works</a></span>
			<span><a href="#"> Donation </a></span>
			<span><a href="#"> Our Service</a></span>
			<span><a href="#" style="color: rgb(0, 255, 229)"> Contact Us </a></span>
			<%if(flag != null){ %> 
			<span><a href="menu.jsp" class="minimize_profile none">Profile</a></span>
			<%}else{ %>
				<span><a href="JoinUs.jsp" class="minimize_profile ">Login / SignUp</a></span>
			<%} %>
		</section>
		
	<!-- Main -->
    <section>
        <h4 class="sectionHeader">Contact us</h4>
        <h1 class="heading">Get In Touch...</h1>
        <p class="para"> </p>

        <div class="contactForm">
            <form action="<%=request.getContextPath()%>/contactUsServlet" method="post">
                <h1 class="sub-heading">Need Support!</h1>
                

                <!-- Inputs -->
                <input type="text" class="input" placeholder="Your first name" name="fname" required>
                <input type="text" class="input" placeholder="Your last name" name="lname" required>
                <input type="text" class="input" placeholder="Your email" name="email" required>
                <input type="text" class="input" placeholder="Your phno" name="phno" required>
                <textarea class="input" cols="30" rows="5" placeholder="Write your msg" name="message" required></textarea>
                <input type="submit" class="input submit" value="Send Message">
				<p style="color:black;"><%if(msg!=null){out.print(msg);}%></p>
            </form>

            <div class="map-container">
                
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d44695.76899629113!2d88.41086!3d23.194089!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f8e61ab1f3ed45%3A0xfdb3a945ab52b77e!2sSaroj%20Mohan%20Institute%20of%20Technology!5e1!3m2!1sen!2sin!4v1732821276115!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>

        <div class="contactMethod">
            <div class="method">
                <i class="fa-solid fa-location-dot contactIcon"></i>
                <article class="text">
                    <h1 class="sub-heading">Location:</h1>
                    <p class="para"><b><a href=https://maps.app.goo.gl/8Yo3vuFSkUwhhWKbA > SH6, Satapati, Guptipara, West Bengal 712512</a></b></p>
                </article>
            </div>

            <div class="method">
                <i class="fa-solid fa-envelope contactIcon"></i>
                <article class="text">
                    <h1 class="sub-heading">Email:</h1>
                    <p class="para"><b>smilefoundation832@gmail.com</p></b>
                </article>
            </div>

            <div class="method">
                <i class="fa-solid fa-phone contactIcon"></i>
                <article class="text">
                    <h1 class="sub-heading">Phone:</h1>
                    <p class="para"><b>9876543210</b></p>
                </article>
            </div>
        </div>
    </section>
	
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