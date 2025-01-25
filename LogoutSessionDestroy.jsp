<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
			history.pushState(null, null, location.href);
			window.onpopstate = function () {
				history.go(1);
			};
		</script>
</head>
<body>
	<script type="text/javascript">

		setTimeout(function(){	
            window.location.href = "<%=request.getContextPath()%>/NGO & Waste/home.jsp";  // /NGO_Project/src/main/webapp/NGO & Waste/index.jsp
        },100)
		


	</script>
</body>
</html>