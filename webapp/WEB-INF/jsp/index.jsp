<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
</body>
</html>