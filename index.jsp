<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <!-- Font Awesome Icons -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
   <!--  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css" /> -->
    <link rel="stylesheet" href="style.css">
</head>
<body onload="sliderAutoplay();responsive()">
	<header>
        <nav>
            <a href="#" id="logo" onclick="location.reload()">
                <img src="LOGO.jpeg" alt="">
                <p>SMILE Foundation</p></a>
            <input type="checkbox" id="hamburger" />
            <label for="hamburger">
              <i class="fa-solid fa-bars"></i>
            </label>
            <ul>
              <li>
                <a href="#" class="active" onclick="location.reload()">Home</a>
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
              <%
                String flag = (String)session.getAttribute("flag");
            	String user = (String)session.getAttribute("username");
            	if(flag != null)
            	{
            	%>
            		<a href="menu.jsp" class="minimize_profile none">Profile</a>
						<div id="profileImg">
							<div id="profile-background">
								<div class="profile">
									<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRieKfpLWxIJZGXslh9Zj05ykb3P_zU0dHUJQsVUJcdknc4-fS7zyjHIMfM30SGd52OS5w&usqp=CAU" alt="" />
								</div>

								<div class="menu">
									<h3><%out.print(user); %></h3>
									<p>Smile Member</p>
									<ul>
										<li>
											<i id="icon1" class="fa-regular fa-user"></i>
											<a href="UserProfile.jsp">Profile</a>
										</li>
										<li>
											<i class="fa-solid fa-pen-to-square"></i>
											<a href="#">Edit</a>
										</li>
										<li>
											<i class="fa-regular fa-envelope"></i>
											<a href="#">Message</a>
										</li>
										<li>
											<i class="fa-solid fa-gear"></i>
											<a href="#">Settings</a>
										</li>
										<li>
											<i class="fa-solid fa-circle-question"></i>
											<a href="#">Help</a>
										</li>
										<li>
											<i class="fa-solid fa-right-from-bracket"></i>
											<a href="Logout.jsp">Logout</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						
            	<%
            	}else{%>
            		<a href="JoinUs.jsp">Join Us</a>		
            	<% }%>
              </li>
            </ul>
          </nav>
    </header>


    <main>
        <div class="container" id="cnt1">
            <div id="box">
                <img src="LOGO.jpeg" alt="">
                <div id="intro">
                    Let's Ensure <span>Happy Childhood</span> For India's Children 😉
                </div>
                <!--<button id="donate-btn"><span>Donate now</span></button>-->
            </div>
            <video data-rellax-speed="0" autoplay="" muted="" loop="" playsinline="" id="">
                <source src="Childrens.mp4" >
            </video>
        </div>
        

        <section class="slider-container">
          <div
            class="slide-wrapper"
            onmouseover="sliderHover()"
            onmouseout="sliderLeave()"
          >
            <div class="slider">
              <div id="content">
                <p id="line1">HOW YOU COULD HELP</p>
                <p id="line2">WE STAND TOGETHER #WITHREFUGEES</p>
                <h2>4,239 PEOPLE HAVE PLEDGED THEIR SUPPORT</h2>
                <a href=""><button id="but">Donate</button></a>
              </div>

              <img id="slide" src="https://i.ndtvimg.com/i/2016-01/malnutrition_625x350_81452154507.jpg" alt="Photo is not showing"/>
            </div>
    
            <div class="slide_button">
              <i class="bi bi-chevron-left clickLeft" onclick="clickLeft()"></i>
              <i class="bi bi-chevron-right clickRight" onclick="clickRight()"></i>
            </div>
          </div>
          <div class="introduction">
            <p>
              content: Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Aliquid praesentium incidunt omnis. Labore dolore harum,
            </p>
          </div>
        </section>
    
        
    </main>

    <footer class="footer">
      <div class="container">
          <div class="row">
              <div class="column">
                  <h4 id="intro">The SMILE foundation is a non-profitable organisation.
                      Our mission is to promote sustainable waste management 
                      that safeguard
                      the environment and enhance public health.
                  </h4>
              </div>
              <div class="column">
                  <h3 class="heading">About Us</h3>
                  <ul>
                      <li><a href="#">About Us</a></li>
                      <li><a href="#">Our Vision and Mission</a></li>
                      <li><a href="#">Donation Faqs</a></li>
                      <li><a href="#">Term's and conditions</a></li>
                  </ul>
              </div>
              
              
              <div class="column">
                  <h3 class="heading">Get in Touch</h3>
                  <ul>
                      <li><a href="#">Contact Us</a></li>
                  </ul>
              </div>
          </div>
      </div>
      <div class="social_links">
          <h3 class="heading" style="color: rgb(18, 204, 237);">Follow Us</h3>
          <a href="#" class="icon"><i class="bi bi-facebook"></i></a>
          <a href="#" class="icon"><i class="bi bi-twitter-x"></i></a>
          <a href="#" class="icon"><i class="bi bi-youtube"></i></a>
          <a href="#" class="icon"><i class="bi bi-instagram"></i></a>
      </div>
  </footer>
    <script>
      var temp = 0;
      var sliderArr = [
        "https://i.ndtvimg.com/i/2016-01/malnutrition_625x350_81452154507.jpg",
        "https://assets.thehansindia.com/hansindia-bucket/1395_Kids.jpg",
        "https://t4.ftcdn.net/jpg/06/45/78/97/360_F_645789725_UVcZOtNDgA553zikfetQsQqh8biFcg31.jpg"
      ];

      function sliderHover() {
        let ele = document.getElementsByClassName("slide_button");
        ele[0].style.zIndex = "1";
        ele[0].style.transition = "0.8s ease";
      }
      function sliderLeave() {
        let ele = document.getElementsByClassName("slide_button");
        ele[0].style.zIndex = "-1";
      }

      function clickLeft() {
        let slide = document.getElementById("slide");
        if (temp == 0) {
          temp = 3;
        }
        slide.setAttribute("src", sliderArr[--temp]);
        slide.style.transition = "0.8s ease";
      }

      function clickRight() {
        let slide = document.getElementById("slide");
        if (temp == 2) {
          temp = -1;
        }
        slide.setAttribute("src", sliderArr[++temp]);
      }

      let sliderAutoplay = () => {
        let slide = document.getElementById("slide");
        setInterval(() => {
          if (temp == 2) {
            temp = -1;
          }

          slide.setAttribute("src", sliderArr[++temp]);
        }, 3000);
      };
   	
    //Profile details
		let profile = document.querySelector(".profile");
		let menu = document.querySelector(".menu");

		profile.addEventListener("click", () => {
			menu.classList.toggle("active");
		});
		
		window.addEventListener("mouseup", function (event) {
			if (
				event.target != menu &&
				event.target.parentNode != menu &&
				event.target != profile &&
				event.target.parentNode != profile
			) {
				menu.classList.remove("active");
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
    
</body>
</html>