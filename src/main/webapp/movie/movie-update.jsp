<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
<jsp:include page="/include/header.jsp"/>
<%
Connection con = DBCon.getCon();
String miNum = request.getParameter("miNum");
String sql ="SELECT * FROM MOVIE_INFO WHERE MI_NUM="+miNum;
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);

if(!rs.next()){
	%>
		<script>
			alert('이미 삭제된 게시물 입니다.')
			history.back();
		</script>
	<%
	return;
	}
%>
<form action="<%=root%>/movie/movie-update-ok.jsp">
<input type="hidden"name="miNum"value="<%=miNum%>">
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" id="miTitle" name="miTitle" value="<%=rs.getString("MI_TITLE")%>"></td>
		</tr>
		<tr>
			<th>감독</th>
			<td><input type="text" id="miDirec" name="miDirec" value="<%=rs.getString("MI_DIRECTOR")%>"></td>
		</tr>
		<tr>
			<th>장르</th>
			<td><input type="text" id="miGenre" name="miGenre" value="<%=rs.getString("MI_GENRE")%>"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea id="miDesc" name="miDesc" style="resize:none"cols="30" rows="15"><%=rs.getString("MI_DESC")%></textarea></td>
		</tr>
		<tr>
		<td><button>수정 완료</button></td>
		</tr>
	</table>
</body>
</html>