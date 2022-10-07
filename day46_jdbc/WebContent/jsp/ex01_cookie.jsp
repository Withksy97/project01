<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_cookie.jsp Cookie</title>
</head>
<body>
	<%
		// C:\Users\KOSA\Cookies -window 10

	Cookie cookie = new Cookie("name", "kingsmile");
	// Client(브라우저)에게 cookie 전달
	request.setCharacterEncoding("UTF-8");
	response.addCookie(cookie);
	%><hr>
	서버 도메인 이름: <%=cookie.getDomain()%><br> 
	서버에서 설정 이름:<%=cookie.getName()%><br> 
	서버에서 설정 값: <%=cookie.getValue()%><br>
	<hr>

	<%
		// client 쿠키 정보 읽어 오기
	Cookie[] cs = request.getCookies();
	if (cs != null || cs.length > 0) {
		for (int i = 0; i < cs.length; i++) {
			out.print(cs[i].getName() + "<br>");
			out.print(cs[i].getValue() + "<br>");
		} // end for
	} else {
		out.print("client 저장된 쿠키 정보가 없습니다.");
	} // end if
	%>
</body>
</html>