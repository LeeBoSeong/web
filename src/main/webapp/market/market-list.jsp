<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file = "/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
	<th>번호</th>
	<th>상품</th>
	<th>가격</th>
	<th>종류</th>
	</tr>
<%
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql ="SELECT MK_NUM, MK_NAME, MK_PRICE, MK_TYPE FROM MARKET_INFO";
	ResultSet rs = stmt.executeQuery(sql); 
	while(rs.next()){
		%>
		<tr>
		<td><%=rs.getInt("MK_NUM") %>
		<td><%=rs.getString("MK_NAME") %>
		<td><%=rs.getInt("MK_PRICE") %>
		<td><%=rs.getString("MK_TYPE") %>
		</tr>
		<%
	}
%>
<jsp:include page="/include/header.jsp"/>
</table>
</body>
</html>