<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex15_subparamMain.jsp</title>
</head>
<body>
<h1>Sub Param Main</h1>

	<%
		String type = request.getParameter("type");
		String userID = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		out.print(type + "/" + userID + " / " + pwd);
		out.print("<br/> Main Page");
	%><hr>
	<h3>Include page information</h3>
	<jsp:include page="ex15_subparam.jsp">
		<jsp:param value="<%= type %>" name="Type"/>
		<jsp:param value="1004" name="userid"/>
		<jsp:param value="oracle" name="pwd"/>
	</jsp:include>
</body>
</html>