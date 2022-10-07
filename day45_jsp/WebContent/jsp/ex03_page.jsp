<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page buffer="1kb" autoFlush="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_page.jsp Page - buffer 사용하기</title>
</head>
<body>
	<%
		// default : buffer size : 8kb
		// default : autoFlush : true
		for(int i=0;i<1000;i++){			
			out.println("hello~~" + i);
		}
	%>
	<%-- %>
	hello~~<%= i %>
	<%} --%>// for end%>
</body>
</html>