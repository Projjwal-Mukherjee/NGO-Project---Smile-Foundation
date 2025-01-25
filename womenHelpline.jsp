<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smile Foundation</title>
	<link rel="shortcut icon" href="Logo.png" type="image/x-icon" />

    <link rel="stylesheet" href="womenHelplineStyle.css">
</head>
<body>
		<%
		String msg = (String)session.getAttribute("msg");
		System.out.println(msg);	
		%>
    <main>
        <form action="<%=request.getContextPath()%>/womenServlet" method="post">
            <h1><center>Women's Helpline</center></h1>
            <div class="womenInfo">
                <h2>Women Information</h2>                                <!-- Women's Information  -->
                <hr>
                <br>
                <label for="wname">Name: </label>
                <input type="text" id="wname" name="wname" class="inputText" required><span>*</span>

                <br><br>
                <label for="age">Age: </label>
                <input type="number" id="age" name="age" class="inputText" required><span>*</span>
                <br><br>
                <label for="address">Address: </label>
                <input type="text" id="address" name="address" class="inputText" required><span>*</span>
                <br><br>
                <h2>Relationship Status</h2>                                <!-- Relationship Status  -->
                <hr><br>
                <input type="radio" name="reln" id="s" class="reln" value="Single">
                Single
                <input type="radio" name="reln" id="m" class="reln" value="Married">
                Married
                <input type="radio" name="reln" id="d" class="reln" value="Divorced">
                Divorced
                <input type="radio" name="reln" id="w" class="reln" value="Widowed">
                Widowed
                <input type="radio" name="reln" id="o" class="reln" value="Other">
                Other
                <br><br>
                <h2>Nature Of Complaint</h2>                                <!-- Nature Of Complaint  -->
                <hr><br>
                <input type="checkbox" name="complaint1" id="dms" class="check" value="Domestic Violance"> Domestic Violance  <br>
                <input type="checkbox" name="complaint2" id="sxh" class="check" value="Sexual Harrasment"> Sexual Harrasment <br>
                <input type="checkbox" name="complaint3" id="wh" class="check" value="Workplace Harrasment"> Workplace Harrasment <br>
                <input type="checkbox" name="complaint4" id="eab" class="check" value="Emotional Abuse"> Emotional Abuse <br>
                <input type="checkbox" name="complaint5" id="oth" class="check" value="Others"> Others <br><br>
                <h2>Describe Issue </h2> <hr><br>

                <textarea name="issue" id=""></textarea>
            </div>
            <div class="contactInfo">
                <h2>Complainer Information</h2>
                <hr><br>
                <label for="cname">Name: </label>
                <input type="text" id="cname" name="cname" class="inputText" required><span>*</span><br><br>

                <label for="cname">Email: </label>
                <input type="email" id="email" name="email" class="inputText" required><span>*</span>
                <br><br>

                <label for="phno">Phone Number: </label>
                <input type="number" id="phno" name="phno" class="inputText" required><span>*</span>

            </div>
            <div class="add">
            	<p style="color:red; text-align:center;"><%if(msg!=null){out.print(msg);}%></p>
                <button type="submit">
                    <abbr title="Click the button Submit Report">Submit</abbr>
                    </button>
            </div>
            
        </form>
    </main>
</body>
</html>    