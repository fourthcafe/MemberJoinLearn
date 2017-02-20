<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fourthcafe</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/static/css/main.css" />
</head>
<body>
	<div class="body_wrapper">
		<div class="content">
			<ul>
				<c:forEach var="member" items="${allMember }">
					<li>${member }</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>