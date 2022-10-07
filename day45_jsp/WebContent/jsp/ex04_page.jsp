<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="java.util.*, java.io.*, java.sql.*" %>
 <%@ page import="java.util.Date" %>
 <%@ page import="java.io.File" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04_page.jsp</title>
</head>
<body>
	<h2>page : import & out object & buffer</h2>
	<%
		boolean b = true;
		if(10 < 5){			
	%>
		값은 : <font color="blue"><%= b %></font>
	<%} else{
		b= false;
	%>
		값은 : <font color="red"><%= b %></font>
	<%}// if end %> <hr>
	<h3>Buffer 관련 메소드 (out 객체를 통해서...)</h3>
		버퍼: <%= out.getBufferSize() %><br/> 
		남은 크기: <%= out.getRemaining() %><br/>
		버퍼 설정 정보: <%= out.isAutoFlush() %><br/>
		 
</body>
</html>