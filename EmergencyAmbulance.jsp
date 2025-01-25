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
		<link rel="stylesheet" href="EmergencyAmbulance.css" />
	</head>
	<body>
		<%
		String msg = (String)session.getAttribute("msg");
		System.out.println(msg);	
		%>
		<form action="<%=request.getContextPath()%>/ambulanceServlet" method="post">
			<fieldset class="field">
				<p id="heading">Emergency Ambulance Service</p>
				<p id="parah">Please fill out the form Correctly</p>

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
					<div class="emailBox">
						<label for="email">E-mail</label><br />
						<input type="email" id="email" name="email" required />
					</div>

					<div class="phnoBox">
						<label for="phno">Phone Number:</label><br />
						<input type="tel" id="phno" name="phno" required  placeholder="123-45-678" title="Please enter correct phone number" maxlength="10" minlength="10" />
					</div>
				</div>

				<div class="relationBox">
					<p>RelationShip With Patient:</p>

					<input type="radio" id="parent" name="relation" value="parent" />
					<label for="parent">Parent</label><br />

					<input type="radio" id="child" name="relation" value="Child" />
					<label for="child">Child</label><br />

					<input type="radio" id="Sibing" name="relation" value="Sibling" />
					<label for="Sibing">Sibling</label><br />

					<input type="radio" id="Friend" name="relation" value="Friend" />
					<label for="Friend">Friend</label><br />

					<input type="radio" id="Others" name="relation" value="Others" />
					<label for="Others">Others</label><br />
				</div>
				<br /><br />

				<div class="box3">
					<div class="addressBox">
						<label for="Address">Address</label><br />
						<input type="text" id="Address" name="Address" required />
					</div>
					<div class="streetBox">
						<label for="strAdd">Street Address Line</label><br />
						<input type="text" id="strAdd" name="strAdd" required />
					</div>

					<div class="cityBox">
						<label for="City">City</label><br />
						<input type="text" id="City" name="City" required />
					</div>
					<div class="stateBox">
						<label for="state">State / Province</label><br />
						<input type="text" id="state" name="state" required />
					</div>

					<div class="zipBox">
						<label for="zipcode">Postal/ Zip Code</label><br />
						<input type="tel" id="zipcode" name="zipcode" required />
					</div>
					<p style="color:red;"><%if(msg!=null){out.print(msg);}%></p>
					<button type="submit">Submit</button>
				</div>
			</fieldset>
		</form>
	</body>
</html>
    