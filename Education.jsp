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

		<link rel="stylesheet" href="Education.css" />
	</head>
	<body>
		<main>
			<form action="<%=request.getContextPath()%>/educationHelpServlet" method="post">
				<h1><center>Education Helpline</center></h1>
				<div class="womenInfo">
					<h2>Student's Information</h2>
					<!-- Child's Information  -->
					<hr />
					<br />
					<label for="cname">Name: </label>
					<input
						type="text"
						id="wname"
						name="name"
						class="inputText"
						required
					/><span>*</span>

					<br /><br />
					<label for="age">Age: </label>
					<input
						type="number"
						id="age"
						name="age"
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
					<h2>Gender</h2>
					<!-- Relationship Status  -->
					<hr />
					<br />
					<input type="radio" name="gen" id="m" class="reln" value="Male" />
					Male
					<input type="radio" name="gen" id="f" class="reln" value="Fe-male"  />
					Female
					<input type="radio" name="gen" id="p" class="reln" value="Others"  />
					Prefer not to say
					<br /><br />
					<h2>Relationship To Requester</h2>
					<!-- Relationship Status  -->
					<hr />
					<br />
					<input type="radio" name="reln" id="c" class="reln" value="Child" />
					Child
					<input type="radio" name="reln" id="oth" class="reln" value="Other" />
					Other
					<input type="radio" name="reln" id="n" class="reln" value="None" />
					None
					<br /><br />

					<h2>Additional Description</h2>
					<hr />
					<br />

					<textarea
						name="description"
						id=""
						placeholder="Additional information about student..."
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

					<label for="cname">Email: </label>
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
    