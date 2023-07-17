<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
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
<table border="1">
	<tr>
		<th>번호</th>
		<td><%=rs.getInt("MI_NUM")%></td>
	</tr>
	
	<tr>
		<th>제목</th>
		<td><%=rs.getString("MI_TITLE")%></td>
	</tr>
	
	<tr>
		<th>감독</th>
		<td><%=rs.getString("MI_DIRECTOR")%></td>
	</tr>
	
	<tr>
		<th>장르</th>
		<td><%=rs.getString("MI_GENRE")%></td>
	</tr>
	
	<tr>
		<th>내용</th>
		<td><%=rs.getString("MI_DESC")%></td>
	</tr>
	
	<tr>
		<th>상영일자</th>
		<td><%=rs.getString("MI_CREDAT")%></td>
	</tr>
	
	<tr>
		<th>관람객수</th>
		<td><%=rs.getInt("MI_CNT")%></td>
	</tr>
	<tr>
	<td><button onclick="location.href='/web/movie/movie-update.jsp?miNum=<%=miNum%>'">수정</button>
	<button>삭제</button>
	</tr>
</table>
</body>
</html>