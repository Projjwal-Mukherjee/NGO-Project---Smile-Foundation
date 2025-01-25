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
		<link rel="stylesheet" href="childHelpLinestyle.css" />
	</head>
	<body>
		<%
		String msg = (String)session.getAttribute("msg");
		System.out.println(msg);	
		%>
		<form action="<%=request.getContextPath()%>/helpChildServlet" method="post">
			<fieldset class="childField">
				<p id="second">Child Information</p>
				<div class="box1">
					<div class="fnameBox">
						<label for="fname">First name:</label><br />
						<input type="text" id="fname" name="fname" required />
					</div>

					<div class="lnameBox">
						<label for="lname">Last name:</label><br />
						<input type="text" id="lname" name="lname" required />
					</div>
				</div>
				<div class="box2">
					<div class="age">
						<label for="age">Age:</label><br />
						<input type="number" id="age" name="age" required />
					</div>

					<div class="genderBox">
						<p>Gender:</p>

						<input type="radio" id="male" name="Gender" value="male" />
						<label for="male">Male</label>

						<input type="radio" id="female" name="Gender" value="female" />
						<label for="female">Female</label>

						<input type="radio" id="Others" name="Gender" value="Others" />
						<label for="Others">Others</label><br /><br />
					</div>
				</div>
				<div class="box3">
					<div class="addressBox">
						<label for="Address">Address</label><br />
						<input type="text" id="Address" name="Address" required />
					</div>
					<div class="phnoBox">
						<label for="phno">Phone Number:</label><br />
						<input
							type="tel"
							id="phno"
							name="phno"
							required
							placeholder="123-45-678"
							title="Please enter correct phone number"
							maxlength="10"
							minlength="10"
						/>
					</div>
				</div>
				<div class="situationBox">
					<p>Situation</p>
					<div class="situation1">
						<label for="brief1">Briefly describe the issue or problem:</label
						><br />
						<input type="text" id="brief1" name="brief1" required /><br />
						<label for="brief2"
							>* Types of abuse or neglect (if applicable): (e.g.:- Physical,
							Emotional, Sexual, neglect)</label
						><br />
						<label for="namedao"
							>* Names of any individuals involved.(if any)</label
						><br />
					</div>
					<!-- <div class="situation2">
						<label for="brief2"
							>Types of abuse or neglect (if applicable): (e.g.:- Physical,
							Emotional, Sexual, neglect)</label
						><br />
						<input type="text" id="brief2" name="brief2" required />
					</div>
					<div class="situation3">
						<label for="namedao">Names of any individuals involved:</label
						><br />
						<input type="text" id="namedao" name="namedao" required />
					</div>
					<div class="situation4">
						<label for="detail">Any other relevent details:</label><br />
						<input type="text" id="detail" name="detail" required />
					</div> -->
				</div>
				<div class="contactInfo">
					<p>Contact Information</p>
					<div class="callernameBox">
						<label for="callerName">Name of caller/reporter:</label><br />
						<input type="text" id="callerName" name="callerName" required />
					</div>
					<div class="relationChild">
						<label for="relation2child">Relationship to the child:</label><br />
						<input
							type="text"
							id="relation2child"
							name="relation2child"
							required
						/>
					</div>
					<div class="phnEmail">
						<div class="emailBox">
							<label for="email">E-mail</label><br />
							<input type="email" id="email" name="email" required />
						</div>

						<div class="phnBox">
							<label for="phnom">Phone Number:</label><br />
							<input type="tel" id="phnom" name="phnom" required />
						</div>
					</div>
				</div>
				<!-- <div class="additionalInfo">
					<label for="addiInfo">Any specific requests or concerns</label><br />
					<input type="tel" id="addiInfo" name="addiInfo" />
				</div> -->
				<p style="color:red;text-align:center;margin-bottom:3vh"><%if(msg!=null){out.print(msg);}%></p>
				<div class="lastbtn">
					<button type="submit">Submit</button>
				</div>
			</fieldset>
		</form>
	</body>
</html>

    