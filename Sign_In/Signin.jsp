<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 페이지</title>
		<style type="text/css">
			
		</style>
	</head>
	<body>
		<div id="signin">
			<form method="post" action="/clientweb/project01/signin.do">
				<h2>회원가입 하기</h2>
				<hr/>
			
				<div>
					<h4>아이디</h4>
					<input type="text" placeholder="아이디" name="id">
				</div>
				<div>	
					<h4>비밀번호</h4>
					<input type="text" placeholder="비밀번호" name="password">
				</div>
				<div>
					<h4>이름</h4>
					<input type="text" placeholder="이름" name="name">
				</div>
				<div>
					<h4>전화번호</h4>
					<input type="text" placeholder="전화번호" name="cellnum"> <input type="submit" value="회원가입">
				</div>
			</form>
		</div>
	</body>
</html>