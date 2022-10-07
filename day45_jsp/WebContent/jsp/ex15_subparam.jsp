<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex15_subparam.jsp Sub Param</title>
</head>
<body>
	<h1>Sub Param</h1>
	Name 파라미터 List<p>
	<ul>
	<%
		String[] name = request.getParameterValues("userid");
	for (String n : name) {
	%>
	<li><%=n%></li>
	<%
		} //for end
	%>
	</ul>
	<hr>
	
	<%
		String type = request.getParameter("Type");

	if (type.equals("A")) {
		out.print("당신이 요청한 데이터는 제품 : " + type);
	} else if (type.equals("B")) {
		out.print("당신이 요청한 데이터는 제품 : " + type);
	}
	%><br>
</body>
</html>