<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
		String msg = (String)session.getAttribute("msg");
		System.out.println(msg);	
		%>    

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Smile Foundation</title>
	<link rel="shortcut icon" href="Logo.png" type="image/x-icon" />

		<link rel="stylesheet" href="MedicalEquip.css" />
	</head>
	<body>
		<main>
			<form action="<%= request.getContextPath()%>/medicalHelpServlet" method="post">
				<h1><center>Medical Requirement</center></h1>
				<div class="womenInfo">
					<h2>Organisation Information</h2>
					<!-- Women's Information  -->
					<hr />
					<br />
					<label for="oname">Organization Name: </label>
					<input
						type="text"
						id="oname"
						name="oname"
						class="inputText"
						required
					/><span>*</span>

					<br /><br />
					
					<label for="org-type">Organisation Type: </label>
					<input
						type="text"
						id="org-type"
						name="org-type"
						class="inputText"
						required
					/><span>*</span> <br /><br />
					
					<label for="address">Address: </label>
					<input
						type="text"
						id="address"
						name="address"
						class="inputText"
						required
					/><span>*</span> <br /><br />
					

					<h2>Equipment Require</h2>
					<!-- Nature Of Complaint  -->
					<hr />
					<br />
					<input type="checkbox" name="complaint1" id="oxgen" class="check" value="Oxygen"/>
					Oxygen (O2) <br />
					<input type="checkbox" name="complaint2" id="nitrogen" class="check" value="Nitrogen"/>
					Nitrogen <br />
					<input type="checkbox" name="complaint3" id="blood" class="check" value="Blood"/>
					Blood <br />

					<input type="checkbox" name="complaint4" id="er" class="check" value="others"/>
					Others <br /><br />
					<h2>More Information</h2>
					<hr />
					<br />

					<textarea
						name="description"
						id=""
						placeholder="Additional information about the item/items..."
					></textarea>
				</div>
				<div class="contactInfo">
					<h2>Requester's Information</h2>
					<hr />
					<br />
					<label for="cname">Name: </label>
					<input
						type="text"
						id="cname"
						name="cname"
						class="inputText"
						required
					/><span>*</span><br /><br />

					<label for="email">Email: </label>
					<input
						type="email"
						id="email"
						name="email"
						class="inputText"
						required
					/><span>*</span> <br /><br />

					<label for="phno">Phone Number: </label>
					<input
						type="number"
						id="phno"
						name="phno"
						class="inputText"
						required
					/><span>*</span>
				</div>
				<p style="color:red;text-align:center;margin-bottom:3vh"><%if(msg!=null){out.print(msg);}%></p>
				<div class="add">
					<button type="submit">
						<abbr title="Click the button Submit Report">Submit</abbr>
					</button>
				</div>
			</form>
		</main>
	</body>
</html>
    