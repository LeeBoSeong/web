<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
<%
	String miNum = request.getParameter("miNum");
	Connection con = DBCon.getCon();
	String sql = "SELECT * FROM movie_info WHERE MI_NUM=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, miNum);
	ResultSet rs = pstmt.executeQuery();
	
	if(!rs.next()){
		%>
			<script>
				alrter('게시물 없음');
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
		<th>상영일</th>
		<td><%=rs.getString("MI_CREDAT")%></td>
	</tr>
	<tr>
		<th>관객수</th>
		<td><%=rs.getInt("MI_CNT")%></td>
	</tr>
</table>
</body>
</html>