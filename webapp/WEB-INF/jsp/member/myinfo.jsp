<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fourthcafe::가입</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/static/css/main.css" />
</head>
<body>
	<div class="sub">
		<form action="/member/update" method="post">
			<input type="hidden" name="userNo" value="${member.userNo }" />
			ID: <input type="text" name="userId" value="${member.userId }" />
			<br/>
			PW: <input type="password" name="userPw" value="${member.userPw }" />
			<br/>
			NM: <input type="text" name="userName" value="${member.userName }" />
			<br/>
			CN: <input type="text" name="companyNo" value="${member.companyNo }" />
			<br/>
			<input type="submit" value="변경">
		</form>
		<div>
			<div class="btn">
				<a href="/member/delete">삭제</a>
			</div>
		</div>
	</div>
</body>
</html>