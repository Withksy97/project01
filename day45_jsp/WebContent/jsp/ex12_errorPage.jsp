<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page errorPage="/Error/Error404.jsp" %> --%>
<%@ page buffer="2kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex12_errorPage.jsp</title>
</head>
<body>
	<h2>web.xml 설정 파일을 톻해서 에러처리</h2>
	
	<!-- 500 error -->
	<%
		for(int i=1;i<5000;i++){
			out.print(i+"\t");			
		}
	%>
	
	<!-- 404 error 해당 경로에서 파일을 찾을 수 없음 -->
	<%-- <jsp:forward page="ex02_response.jsp"/> --%>
</body>
</html>