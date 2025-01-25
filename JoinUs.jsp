<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true" %>    

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Smile Foundation</title>
		<link rel="shortcut icon" href="Logo.png" type="image/x-icon" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" /> <!-- Font Awsome CDN -->

    <script type="module" src="https://cdn.jsdelivr.net/npm/ionicons@latest/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://cdn.jsdelivr.net/npm/ionicons@latest/dist/ionicons/ionicons.js"></script> <!-- Iconic Script tag for Women Logo -->

    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"><!-- Boots-Strap -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    
		<link rel="stylesheet" href="joinus2.css" />
	</head>
	<body>
		<header id="header1">
        <div id="head-top">
            <div class="top-elements" id="top-element1">
                <span class="top-span1">
                    <i class="fa-solid fa-location-dot" style="color: rgb(248, 44, 136);"></i>
                    Sec-V, Kolkata: 700060,West Bengal
                </span>

                <span class="top-span1">
                    <i class="fa-solid fa-phone" style="color: rgb(21, 244, 236);"></i> 9876543210
                </span>
                <span class="top-span1">
                    <i class="fa-regular fa-envelope" style="color: rgb(250, 89, 89);"></i> smilefoundation832@gmail.com
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
                <a href="#login&Signup"><span><i class="fa-solid fa-right-to-bracket" style="color: rgb(8, 126, 165); padding-right: 0.5vh;"></i> Login / SignUp</span></a>
                <!-- <span> <i class="fa-solid fa-user-plus" style="color:rgb(2, 197, 197); padding-right: 0.5vh;"></i> SignUp</span> -->
            </div>
        </div>
        <div id="head-buttom">
            <nav>
                <div id="nav-logo">
                    <img src="LOGO_White.png" alt="">
                    <div id="logo-name">Smile Foundation <br> <span> Let's Create Happiness</span></div>
                    <div id="menu">
                        <i class="fa-solid fa-bars"></i>
                    </div>
                </div>
                <div id="nav-contents">
                    <span id="home"><a href="home.jsp"> Home </a></span>
                    <span><a href="aboutUs.jsp"> About Us</a></span>
                    <span><a href="ourWorks.jsp"> Our Works</a></span>
                    <span><a href="Donation/donate.jsp"> Donation </a></span>
                    <span><a href="services.jsp"> Our Services</a></span>
                    <span><a href="contactUs.jsp"> Contact Us </a></span>
                </div>
                <button onclick="donateAmount()">Donate Now</button>
            </nav>
        </div>
    </header>



    <header id="header2">
        <nav>
            <a href="home.jsp" id="logo" onclick="location.reload()">
                <img src="LOGO_White.png" alt="">
                <p>SMILE Foundation</p></a>
            <input type="checkbox" id="hamburger" />
            <label for="hamburger">
              <i class="fa-solid fa-bars"></i>
            </label>
            <ul>
              <li>
                <a href="home.jsp" class="active" onclick="location.reload()">Home</a>
              </li>
              <li>
                <a href="aboutUs.html">Who are we ?</a>
              </li>
              <li>
                <a href="#features">Our Works</a>
              </li>
              <li>
                
                <a href="donation_index.html">donate</a>
              </li>
              <li>
                <a href="#">Join Us</a>
              </li>
            </ul>
          </nav>
    </header>
		<main>
			<!--Choice section-->
			<section class="part" id="choose">
				<div id="choice">
					<h3>What do you want to Log In as?</h3>
					<br />
					<span>
						<a href="#"><button id="btn-admin">ADMIN</button></a>
						OR
						<a href="#"><button id="btn-user">USER</button></a>
					</span>
				</div>
			</section>

			<!--Log IN section-->
			<section class="sec" id="sec1">
			<ul class="notifications"></ul>
				<div class="tab">
					<form action="<%=request.getContextPath()%>/joinusServlet" method="post">
						<h2>Login</h2>
						<br />
						<input
							type="text"
							class="input"
							id="login-Name"
							name="uname"
							placeholder="Username"
							required
						/><br /><br />
						<input
							type="password"
							class="input"
							id="Password"
							name="password"
							placeholder="Password"
							required
						/><br /><br />
						<a href="enterEmail.jsp" style="color:rgb(0, 208, 255);">Forgot password?</a>
						<br /><br />
						<input
							type="Submit"
							class="button"
							id="login-submit"
							value="Log In"
						/>
						<input type="hidden" value="login" name="servletflag" >
						<br /><br />
						<p>
							Don't have an account?<a href="#" id="register-link" style="color:rgb(0, 208, 255);">Register</a>
						</p>
					</form>
					<br>
					<p id="error" style="color:red;"></p>
				</div>
			</section>

			<!--Sign Up section-->
			<section class="sec" id="sec2">
				<div class="tab">
					<form action="<%=request.getContextPath()%>/joinusServlet" method="post">
						<h2>Sign Up</h2>
						<br />
						<input
							type="text"
							class="input"
							id="signup-Name"
							name="uname"
							placeholder="Username"
							required
						/><br /><br />
						<input
							type="email"
							class="input"
							id="mail"
							name="email"
							placeholder="Email"
							required
						/><br /><br />
						<input
							type="password"
							class="input"
							id="signup-Password"
							name="password"
							placeholder="Password"
							required
						/><br /><br />
						<input
							type="password"
							class="input"
							id="Re-type Password"
							name="signup-retype-password"
							placeholder=" Confirm Password"
							required
						/><br /><br />
						<input
							type="Submit"
							id="signup-button"
							class="button"
							value="Sign Up"
							onclick="checkPassword(event)"
						/>
						<input type="hidden" value="signup" name="servletflag" >
						<br /><br />
						<p>Already a member?<a id="login-link" href="#" style="color:rgb(0, 208, 255);">Login</a></p>
					</form>
					<br>
					<p id="error2" style="color:red;"></p>
				</div>
			</section>

			<!--Admin section-->
			<section class="sec" id="sec3">
				<div class="tab">
					<form action="<%=request.getContextPath()%>/adminServlet" method="post">
						<h2>ADMIN LOGIN</h2>
						<br />
						<input
							type="text"
							class="input"
							id="admin-Name"
							name="uname"
							placeholder="Username"
							required
						/><br /><br />
						<input
							type="password"
							class="input"
							id="admin-Password"
							name="password"
							placeholder="Password"
							required
						/><br /><br />
						<a href="adminEnterEmail.jsp" style="color:rgb(0, 208, 255);">Forgot password?</a>
						<br /><br />
						<input
							type="Submit"
							class="button"
							id="admin-button"
							value="Log In"
						/>
						<input type="hidden" value="admin" name="servletflag" >
					</form>
					<br>
					<p id="error3" style="color:red;"></p>
				</div>
			</section>
		</main>

		

<%			String error = "";
			error = (String)session.getAttribute("error");
			String flag = "false";
			flag = (String)session.getAttribute("flag");				
			String successNotify = (String)session.getAttribute("success");
						if(flag == "login"){%>
						<style>
							#sec1{
								display:block;
							}
							.notifications{
								display:block;
							}
							#sec2,#sec3,#choose{
								display:none;
							}		
						</style> <%
						System.out.println(successNotify);
						if(successNotify == "True"){ %>
							<script>
							
		const notifications = document.querySelector(".notifications");

		const removeToast = (toast) => {
			toast.classList.add("hide");
			if (toast.timeoutId) clearTimeout(toast.timeoutId); 
			setTimeout(() => toast.remove(), 9000); 
		};
		
		const createToast = (id) => {
			
			const toast = document.createElement("li"); 
			toast.className = `toast success`; 
			toast.innerHTML = `<div class="column">
		                         <i style="color:green" class="fa-solid fa-circle-check"></i>
		                         <span style="color:black">"Success: Your account created successfully."</span>
		                      </div>
		                      <i class="fa-solid fa-xmark" onclick="removeToast(this.parentElement)"></i>`;
			notifications.appendChild(toast); 
			toast.timeoutId = setTimeout(() => removeToast(toast), 5000);
		};
		
		createToast("success");

							</script>
						<%} else{ %>
						<script>
							document.getElementById("error").innerHTML = "invalid userid or password";
						</script>
						<%}
						}
						else if(flag =="signup"){
							%><style>	
							#sec2{
								display:block;
							}
							#sec1,#sec3,#choose{
								display:none;
							}		
						</style>
						<script>
							document.getElementById("error2").innerHTML = "You already have an account";
						</script>
						
				<%  }
				else if(error == "error3"){
				%>		<style>	
							#sec3{
								display:block;
							}
							#choose{
								display:none;
							}	
						</style>
						<script>
							document.getElementById("sec3").style.display = "block";
							document.getElementById("error3").innerHTML = "invalid admin userid or password";
						</script>
						
			<% 	
				}
				session.invalidate();
			%>


<script type="text/javascript">
	function donateAmount(){
		window.location.href = "Donation/qrCode.jsp";
	}
</script>
	
		
		<script src="joinUs.js"></script>
	</body>
</html>
    