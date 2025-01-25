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

		<link rel="stylesheet" href="Disaster.css" />
	</head>
	<body>
		<main>
			<form action="<%=request.getContextPath()%>/disasterHelpServlet" method="post">
				<h1><center>Helping Hand ( In-case of Natural Disaster )</center></h1>
				<div class="womenInfo">
					<h2>Basic Information</h2>
					<!-- Child's Information  -->
					<hr />
					<br />
					<label for="loc">Location: </label>
					<input
						type="text"
						id="loc"
						name="loc"
						class="inputText"
						required
					/><span>*</span>

					<br /><br />
					<label for="date">Date: </label>
					<input
						type="date"
						id="date"
						name="date"
						class="inputText"
						required
					/><span>*</span> <br /><br />

					<label for="address">Address: </label>
					<input
						type="address"
						id="address"
						name="address"
						class="inputText"
						required
					/><span>*</span> <br /><br />
					<h2>Describe The Issue:</h2>
					<hr />
					<br />

					<textarea
						name="desc"
						id=""
						placeholder="Proper description about the issue..."
					></textarea>
				</div>
				<div class="contactInfo">
					<h2>Reporter's Information</h2>
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
				<p style="color:red;"><%if(msg!=null){out.print(msg);}%></p>
				<div class="add">
					<br />
					<button type="submit">
						<abbr title="Click the button Submit Report">Submit</abbr>
					</button>
				</div>
			</form>
		</main>
	</body>
</html>
    