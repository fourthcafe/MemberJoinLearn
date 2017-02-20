<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fourthcafe::가입</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
</head>
<body>
	<div class="sub">
		<form action="/member/regist" method="post">
			ID: <input type="text" name="userId" />
			<br/>
			PW: <input type="password" name="userPw" />
			<br/>
			NM: <input type="text" name="userName" />
			<br/>
			CN: <input type="text" name="companyNo" />
			<br/>
			<input type="submit">
		</form>
	</div>
</body>
</html>