<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page session="true" %>    
    <%@page import="java.sql.*" %>   
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Expires" content="-1" />
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Smile Foundation</title>
		<link rel="shortcut icon" href="Logo.png" type="image/x-icon" />
		<link
			rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
			integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
			crossorigin="anonymous"
			referrerpolicy="no-referrer"
		/>
		<!-- Font Awsome CDN -->

		<script
			type="module"
			src="https://cdn.jsdelivr.net/npm/ionicons@latest/dist/ionicons/ionicons.esm.js"
		></script>
		<script
			nomodule
			src="https://cdn.jsdelivr.net/npm/ionicons@latest/dist/ionicons/ionicons.js"
		></script>
		<!-- Iconic Script tag for Women Logo -->

		<link
			rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
		/>
		<!-- Boots-Strap -->

		<link rel="stylesheet" href="home.css" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	</head>
	<body id="body" onload="responsive()">
		<!-- <section class="login">

    </section> -->
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
				session.setAttribute("msg",null);
				String img = "";
            	String username = "";
            	String email = "";
                String flag = (String)session.getAttribute("flag");
				System.out.println(flag);
            	String user = (String)session.getAttribute("username");
            	System.out.println(user);
            	try{
            	Class.forName("com.mysql.cj.jdbc.Driver");
            	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world","root","projjwal@#123");
            	
            	if(flag=="success"){
            		System.out.println("login entering");
                	PreparedStatement ps = conn.prepareStatement("select images.image_url,ngo_members.username,ngo_members.emailid from ngo_members inner join images on ngo_members.username=images.username where ngo_members.username=? "); 
                	ps.setString(1,user);
                	
                	ResultSet rs = ps.executeQuery();
                	while(rs.next()){ 
                		img = rs.getString(1);
                		username = rs.getString(2);
                		email = rs.getString(3);
                		
                	}
            	}
            	if(flag=="admin"){
            		System.out.println("admin entering");
                	PreparedStatement ps2 = conn.prepareStatement("select images.image_url,admin.name,admin.email from admin inner join images on admin.name=images.username where admin.name=? "); 
                	ps2.setString(1,user);
                	
                	ResultSet rs2 = ps2.executeQuery();
                	while(rs2.next()){ 
                		img = rs2.getString(1);
                		username = rs2.getString(2);
                		email = rs2.getString(3);
                		
                	}
            	}
         
            	conn.close();
            	}catch(Exception e){
            		System.out.println(e.getMessage());
            	}
            	System.out.println(username);
            	System.out.println(img);
            	System.out.println(email);
            	if(flag != null)
            	{
            	%>
				
					<a href="#"
						><span
							>
							Welcome  <%out.print(user); %></span
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
						<span id="home"><a href="#"> Home </a></span>
						<span><a href="aboutUs.jsp"> About Us</a></span>
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
										Admin Dashboard
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
				><a href="#" style="color: rgb(0, 255, 229)"> Home </a></span
			>
			<span><a href="aboutUs.jsp"> About Us</a></span>
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

		<main id="main">
			<!--             ////          MSC-1             /////       -->
			<section class="main-sec" id="msc-1">
				<div id="msc-1-content">
					<div id="block1">
						<div id="content">
							<h1>
								<span style="color: rgb(233, 44, 44)">DONATE</span> FOR A GOOD
								CAUSE
							</h1>
							<hr />
							<div id="text">
								Every contribution counts, whether big or small, towards
								education, healthcare, and disaster relief. Your support can be
								the spark that ignites a brighter future.Making a donation can
								transform lives, create opportunities, and drive meaningful
								change in communities. <br />
							</div>
							<div id="btns">
								<button id="content-btn1" class="content-btn" onclick="donateAmount()">
									Donate Now
								</button>
								<form action="Our Vision and  Mission PDF.pdf" method="post">
									<button id="content-btn2" class="content-btn">
										Know More
									</button>
								</form>
								
							</div>
						</div>
					</div>
					<div id="block2">
						<div class="activities" id="activity1" onclick="activity1()">
							<div class="circle">
								<i class="fa-solid fa-truck-medical"></i>
							</div>
							<div class="box">
								<h1>24/7 Ambulance</h1>
								<hr />
								Our 24/7 ambulance service ensures you're never alone in an
								emergency.
							</div>
						</div>
						<div class="activities" id="activity2" onclick="activity2()">
							<div class="circle">
								<i class="fa-solid fa-child-reaching"></i>
							</div>
							<div class="box">
								<h1>Child Helpline</h1>
								<hr />
								Our child helpline is here for you 24/7, for every child in
								need.
							</div>
						</div>
						<div class="activities" id="activity3" onclick="activity3()">
							<div class="circle">
								<ion-icon name="woman"></ion-icon>
							</div>
							<div class="box">
								<h1>Women Helpline</h1>
								<hr />
								Our women helpline is available 24/7, for women in need.
							</div>
						</div>
					</div>
				</div>
				<div id="msc-1-video">
					<video autoplay muted loop>
						<source src="Childrens.mp4" type="video/mp4" />
					</video>
				</div>
			</section>

			<!--             ////          MSC-2             /////       -->

			<section class="main-sec" id="msc-2">
				<div id="sec2-box1">What We Do</div>
				<div id="sec2-box2">
					<div id="wedo1" class="wedo">
						<div class="circle" id="circle1"></div>
						<h1>Disaster Relief</h1>
						<div id="text">
							We provide rapid disaster relief: delivering essential aid,
							rebuilding communities, and restoring hope to affected areas.
						</div>
					</div>
					<div id="wedo2" class="wedo">
						<div class="circle" id="circle2"></div>
						<h1>Tree Plantation</h1>
						<div id="text">
							We plant trees to create greener futures, restore ecosystems, and
							combat climate change for a sustainable world.
						</div>
					</div>
					<div id="wedo3" class="wedo">
						<div class="circle" id="circle3"></div>
						<h1>Charity Events</h1>
						<div id="text">
							Join us at our charity event, bringing hope, support, and positive
							change to our community.
						</div>
					</div>
				</div>
			</section>
			<!--             ////          MSC-3             /////       -->
			<section class="main-sec" id="msc-3">
				<span>SMILE PARTNERS</span>
				<div id="our-Partners">
					These partnerships support initiatives in education, healthcare, and
					women empowerment, reachingunderserved communities across India.
					Together, they work towards creating a positive impact and driving
					sustainable change.

					<div id="container">
						<img
							src="https://img.freepik.com/free-vector/charity-life-abstract-logo_1043-47.jpg?size=338&ext=jpg&ga=GA1.1.1880011253.1728864000&semt=ais_hybrid-rr-similar"
							alt=""
							class="partner"
							id="ptnr1"
						/>

						<img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTccCuqowkBGCFiE07GHvEoY4RBkiKw3iWGBQ&s"
							alt=""
							class="partner"
							id="ptnr2"
						/>

						<img
							src="https://in.childhelpfoundation.in/assets/img/34-01.png"
							alt=""
							class="partner"
							id="ptnr3"
						/>

						<img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHX_ZFUH8Xmuq3voYjxwillKJF5ZZ3UBgSLA&s"
							alt=""
							class="partner"
							id="ptnr4"
						/>

						<img
							src="https://images-platform.99static.com//pY-wS17PXmgc1Zaaa7jtftZydYw=/98x102:1290x1294/fit-in/590x590/99designs-contests-attachments/80/80168/attachment_80168289"
							alt=""
							class="partner"
							id="ptnr5"
						/>
					</div>
				</div>
			</section>
			<!--             ////          MSC-5 (Projjwal)             /////       -->
			<section id="msc-5">
				<div id="support-text">OUR PROGRAMMES</div>
				<div class="support-container">
					<div class="item">
						<!-- image https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOkttfut2SBu9OGWLOAFl00nAy05IQqr5wjg&s -->
						<a href="ourWorks.jsp" title="Our-Works Page">
							<img
								
								src="https://www.meraparivar.org/wp-content/uploads/2022/03/mera-parivar-ngo-117.png"
								alt="student with computer"
						/></a>
						<!-- down text -->
						<div class="down-text">
							<p>
								Our campaign 'Youth Computer Training' aims at Training and Up
								Skilling the youth between the age of 15-30 years for employment
								and empowering them with a secure livelihood.
							</p>
						</div>
						<a href="ourWorks.jsp" class="know-more"><span>know more</span></a>
						<!-- inner text -->
						<div class="inner-text">
							<span>Youth Computer Training</span>
						</div>
					</div>

					<div class="item">
						<!-- image -->
						<a href="ourWorks.jsp" title="Our-Works Page">
							<img
								src="https://helplocal.in/uploads/ngo/myna-mahila-women-upliftment-NGO-mumbai.jpeg"
								alt="student with computer"
							/>
						</a>
						<!-- down text -->
						<div class="down-text">
							<p>
								Empowering Women: Our program fosters skills, confidence, and
								opportunities, enabling women from underprivileged backgrounds
								to lead healthier, more independent lives.
							</p>
						</div>
						<a href="ourWorks.jsp" class="know-more"><span>know more</span></a>
						<!-- inner text -->
						<div class="inner-text">
							<span>Women Empowerment</span>
						</div>
					</div>
					<div class="item">
						<!-- image -->
						<a href="ourWorks.jsp" title="Our-Works Page">
							<img
								src="https://mtdngo.com/assets/uploads/media-uploader/compress1684909753.jpg"
								alt="student with computer"
							/>
						</a>
						<!-- down text -->
						<div class="down-text">
							<p>
								Spreading warmth and hope:Our clothing distribution program
								supports families in need, ensuring comfort and dignity for all.
							</p>
						</div>
						<a href="ourWorks.jsp" class="know-more"><span>know more</span></a>
						<!-- inner text -->
						<div class="inner-text">
							<span> Clothes Distribution </span>
						</div>
					</div>
					<div class="item">
						<!-- image https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScVcS0T6EZhDOp95T5ZUnAdreCqvSN7wE-lfsEXF8HgAtO0a4qW9wXa6FmCrefCXkPWxM&usqp=CAU -->
						<a href="ourWorks.jsp" title="Our-Works Page">
							<img
								src="https://www.helplocal.in/assets/image/causes/medical-support.jpg"
								alt="student with computer"
							/>
						</a>
						<!-- down text -->
						<div class="down-text">
							<p>
								Realising the need for acessible and quality healthcare for all,
								our campaign aims at providing people from the under-priviledged
								sections.
							</p>
						</div>
						<a href="ourWorks.jsp" class="know-more"><span>know more</span></a>
						<!-- inner text -->
						<div class="inner-text">
							<span>Free Medical Checkup</span>
						</div>
					</div>
				</div>
			</section>
			
			<!--             ////          MSC-4             /////       -->
			
			<section class="main-sec" id="msc-4">
				<div id="location">
					<div id="text">
						<span>Find Us</span>
						<p>
							Use the interactive Find Us map to locate
							<b>Smile Foundation</b> , help centers . Feel free to reach us .
						</p>
						<a href="contactUs.jsp">Contact us</a>
					</div>
					<div id="location-view">
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d366.40924397460964!2d88.41083987291158!3d23.19394043424214!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f8e61ab1f3ed45%3A0xfdb3a945ab52b77e!2sSaroj%20Mohan%20Institute%20of%20Technology!5e1!3m2!1sen!2sin!4v1729865672213!5m2!1sen!2sin"
							width="600"
							height="450"
							style="border: 0"
							allowfullscreen=""
							loading="lazy"
							referrerpolicy="no-referrer-when-downgrade"
						></iframe>
					</div>
				</div>
			</section>
		</main>

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
						<pre  onclick="contactus()"><i class="bi bi-envelope-at-fill foot_i"></i> team.memebers04@gmail.com</pre>
						<pre  onclick="contactus()"><i class="bi bi-envelope-at-fill foot_i"></i> smilefoundation832@gmail.com</pre>
						<pre  onclick="contactus()"><i class="bi bi-envelope-at-fill foot_i"></i> donatesmile@gmail.com</pre>
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

		<script src="script.js"></script>
		
		<script type="text/javascript" >
			function donateAmount(){
				window.location.href = "Donation/qrCode.jsp";
			}
			
		</script> 
	</body>
</html>
    