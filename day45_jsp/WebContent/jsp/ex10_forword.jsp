<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex10_forword.jsp Forword Main</title>
</head>
<body>
	사용 목적 : 조건에 맞는 페이지를 사용자에게 전달<br>
	단, 장점은 사용자(Client)는 주소가 바뀌었는지 모른다.<br>
	(사용자가 바라보는 주소는 동일하다.)<hr>
	
	<font color="red">Site Top Content................</font>
	<jsp:forward page="../module/SubForward.jsp"></jsp:forward>
	<font color="blue">Site Bottom Content.....................</font>
</body>
</html>