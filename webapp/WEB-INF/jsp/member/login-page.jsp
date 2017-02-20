<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fourthcafe::로그인</title>
</head>
<body>
	<form action="/member/login" method="post">
		<input type="text" name="userId" />
		<br/>
		<input type="password" name="userPw" />
		<br/>
		<input type="submit" />
	</form>
</body>
</html>