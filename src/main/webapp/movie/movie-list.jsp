<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection con = DBCon.getCon();
String sql = "SELECT * FROM MOVIE_INFO";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
%>
<jsp:include page="/include/header.jsp"/>
<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>감독</th>
		<th>장르</th>
		<th>상영일</th>
		<th>관객수</th>
	</tr>
	<%
	while(rs.next()){
	%>
		<tr>
			<td><%=rs.getInt("MI_NUM")%></td>
			<td><a href="/web/movie/movie-one.jsp?miNum=<%=rs.getInt("MI_NUM")%>"><%=rs.getString("MI_TITLE")%> </td>
			<td><%=rs.getString("MI_DIRECTOR")%></td>
			<td><%=rs.getString("MI_GENRE")%></td>
			<td><%=rs.getString("MI_CREDAT")%></td>
			<td><%=rs.getInt("MI_CNT")%></td>
			<td><button type="button" onclick="location.href='/web/movie/movie-delete.jsp?miNum=<%=rs.getInt("MI_NUM")%>'">삭제</button>
		</tr>
	<%
	}
	%>
	<tr>
	<td colspan="6" align="right"><button onclick="location.href='/web/movie/movie-insert.jsp'">등록</button></td>
	</tr>
</table>
</body>
</html>