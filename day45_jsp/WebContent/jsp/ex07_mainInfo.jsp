<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="" %> 바디태그의 include 차이 알기 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07_mainInfo.jsp Main Info</title>
</head>
<body>
	<h1>Main Info</h1>
	<table style="width: 700px">
		<tr>
			<td colspan="2">
				<jsp:include page="/module/Top.jsp" />
		</tr>
		<tr>
			<td style="width: 200px">
				<jsp:include page="/module/Left.jsp" />
			</td>
			<td style="width: 500px">
				Web Site Main Context..........................................<br /> 
				Web Site Main Context..........................................<br /> 
				Web	Site Main Context..........................................<br />
				Web Site Main Context..........................................<br />
				Web Site Main Context..........................................<br />
				Web Site Main Context..........................................<br />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<jsp:include page="/module/Bottom.jsp" />
		</tr>
</body>
</html>