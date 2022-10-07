<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex08_jdbc.jsp JDBC</title>
</head>
<body>
<%
	Connection conn = null;
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		out.print("driver load success<br>");
		
		conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@cmoojin21_high?TNS_ADMIN=C:/douzone3/2_Oracle/Wallet_cmoojin21",
				"admin", "xxxxxxAt22cc");
		out.print("connection success <br>");
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		//conn.close();
	}
%>
</body>
</html>