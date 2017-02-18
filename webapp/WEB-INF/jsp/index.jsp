<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
</head>
<body>
	<div class="main_wrapper">
		<div class="content_wrapper">
			<form action="/signin" method="post">
				<input type="text" name="id"/>
				<input type="password" name="password"/>
				<input type="submit" value="Sign In">
			</form>
		</div>
	</div>
	
	<c:forEach var="member" items="${allMember }">
		<ul>
			<li>${member }</li>
		</ul>
	</c:forEach>
</body>
</html>