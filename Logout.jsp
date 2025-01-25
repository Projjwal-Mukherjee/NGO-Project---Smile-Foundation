<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Document</title>
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Expires" content="-1" />
		<meta http-equiv="CACHE-CONTROL" content="NO-CACHE" />

		<script>
			history.pushState(null, null, location.href);
			window.onpopstate = function () {
				history.go(1);
			};
			
			
		</script>
		 <script>
        var history_api = typeof history.pushState !== 'undefined';
        if (location.hash == '#no-back') {
            if (history_api) history.pushState(null, '', '#stay')
            else location.hash = '#stay'
 
            window.onhashchange = function () {
                if (location.hash == '#no-back') {
                    alert('Action cannot be done!');
                    if (history_api) history.pushState(null, '', '#stay')
                    else location.hash = '#stay'
                }
            }
        }
</script>
	</head>
	
</html>


	
		<% 
			session.invalidate();
			response.sendRedirect("../demo.jsp");
		%>
	
	