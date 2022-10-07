<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<jsp:useBean id="e" class="edu.kosa.ex13.Emp"/>
<jsp:setProperty property="name" name="e" value="강감찬"/>
<jsp:setProperty property="pay" name="e" value="6000"/>
<jsp:setProperty property="empno" name="e" value="8877"/>

<h2><%= e.toString() %></h2><hr>
<%-- <jsp:setProperty property="*" name="e"/> --%>
이름 : <jsp:getProperty property="name" name="e"/>
사번 : <jsp:getProperty property="empno" name="e"/>
급여 : <jsp:getProperty property="pay" name="e"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex14_useBean.jsp useBean Login</title>
</head>
<body>
	<h1>useBean Login</h1>
	<%
		Date today = new Date();
		out.print(today + "<br>");
	%><hr>
	useBean 이용해서 객체 생성하기<br/>
	<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
	<h3><%= now %></h3>
</body>
</html>