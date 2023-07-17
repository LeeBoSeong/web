<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.common.DBCon"%>
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
<%
	String miTitle = request.getParameter("miTitle");
	if(miTitle != null){
		String miDirec = request.getParameter("miDirec");
		String miGenre = request.getParameter("miGenre");
		String miDesc = request.getParameter("miDesc");
		
		Connection con = DBCon.getCon();
		String sql = "INSERT INTO MOVIE_INFO(MI_TITLE,MI_DIRECTOR,MI_GENRE,MI_DESC)";
		sql += 	"VALUES('"+miTitle+"','" +miDirec+ "','" +miGenre+ "','" +miDesc+ "')";
		Statement stmt = con.createStatement();
		int result = stmt.executeUpdate(sql);
		
		if(result == 1){
			%>
				<script>
					alert('게시글이 등록 되었습니다');
					location.href="/web/movie/movie-list.jsp";
				</script>
			<%
		}
	}
%>
<jsp:include page="/include/header.jsp"/>
<form>
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" id="miTitle" name="miTitle"></td>
		</tr>
		<tr>
			<th>감독</th>
			<td><input type="text" id="miDirec" name="miDirec"></td>
		</tr>
		<tr>
			<th>장르</th>
			<td><input type="text" id="miGenre" name="miGenre"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea id="miDesc" name="miDesc" style="resize:none"cols="30" rows="15"></textarea></td>
		</tr>
		<tr>
		<td><button>등록</button></td>
		</tr>
	</table>
</form>
</body>
</html>