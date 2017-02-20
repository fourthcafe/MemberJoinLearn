<%@page import="me.fourthcafe.dto.Member"%>
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
	<%
		Member member = (Member) session.getAttribute("member");
	%>
	<c:set var="member" value="<%=member%>" />
	<div class="body_wrapper">
		<div class="content">
			<div class="btn">
				<a href="/member/join">회원가입</a>
			</div>
			<div class="btn">
				<a href="/member/read">멤버보기</a>
			</div>
			<c:choose>
				<c:when test="${not empty member }">
					<div class="btn">
						<a href="/member/myinfo">내 정보</a>
					</div>
					<div class="btn">
						<a href="/member/logout">로그아웃</a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="btn">
						<a href="/member/login-page">로그인</a>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>