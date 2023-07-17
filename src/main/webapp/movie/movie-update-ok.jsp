<%@page import="java.sql.PreparedStatement"%>
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
<jsp:include page="/include/header.jsp"/>
<%
	String miNum = request.getParameter("miNum");
	String miTitle = request.getParameter("miTitle");
	String miDirec = request.getParameter("miDirec");
	String miGenre = request.getParameter("miGenre");
	String miDesc = request.getParameter("miDesc");
	
	Connection con = DBCon.getCon();
	String sql = "UPDATE MOVIE_INFO SET MI_TITLE=?, MI_DIRECTOR=?, MI_GENRE=?, MI_DESC=? WHERE MI_NUM=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, miTitle);
	pstmt.setString(2, miDirec);
	pstmt.setString(3, miGenre);
	pstmt.setString(4, miDesc);
	pstmt.setString(5, miNum);
	
	int result = pstmt.executeUpdate();
	if(result == 1){
		%>
			<script>
				alert('수정 완료!');
				location.href="/web/movie/movie-list.jsp"
			</script>
		<%
	}
%>
</body>
</html>