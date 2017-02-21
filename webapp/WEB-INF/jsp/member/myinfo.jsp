<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fourthcafe::가입</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/static/css/main.css" />
</head>
<script type="text/javascript">
$(function() {
	$('#update_form').submit(function() {
		var userNo = $(this).find('[name=userNo]').val();
		var userId = $(this).find('[name=userId]').val();
		var userPw = $(this).find('[name=userPw]').val();
		var userName = $(this).find('[name=userName]').val();
		var companyNo = $(this).find('[name=companyNo]').val();
		
		var data = JSON.stringify({
			userNo: userNo,
			userId: userId,
			userPw: userPw,
			userName: userName,
			companyNo: companyNo
		});
		
		console.log(data);
		
		$.ajax({
			type: 'put',
			contentType: 'application/json;charset=utf-8',
			url: '/member/update',
			data: data,
			dataType: 'json',
			success: function(data, xhr, status) {
				console.log(data);
			},
			error: function(request, status, error) {
				
			}
		});
		
		return false;
	});
	
	$('#delete').click(function() {
		$.ajax({
			type: 'delete',
			url: '/member/delete',
			dataType: 'json',
			success: function(data, xhr, status) {
				console.log(data);
				if (result === 'true') {
					console.log('삭제 완료');
				} else {
					console.log('삭제 실패');
				}
			},
			error: function(request, status, error) {
				
			}
		});
	});
		
});
</script>
<body>
	<div class="sub">
		<form action="/member/update" id="update_form">
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
				<input type="button" id="delete" value="삭제" />
			</div>
		</div>
	</div>
</body>
</html>