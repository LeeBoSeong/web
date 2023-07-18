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
	String miTitle = request.getParameter("miTitle");
	if(miTitle != null && !miTitle.isEmpty()){
		String miDir = request.getParameter("miDir");
		String miGenre = request.getParameter("miGenre");
		String miDesc = request.getParameter("miDesc");
		
		Connection con = DBCon.getCon();
		String sql = "INSERT INTO MOVIE_INFO(MI_TITLE,MI_DIRECTOR,MI_GENRE,MI_DESC) VALUES(?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, miTitle);
		pstmt.setString(2, miDir);
		pstmt.setString(3, miGenre);
		pstmt.setString(4, miDesc);
		
		int result = pstmt.executeUpdate();
		
		if(result == 1){
			%>
				<script>
					alert('등록 완료!');
					location.href="/web/movie2/movie2-list.jsp";
				</script>
			<%
		}
	}
%>
<form>
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" id="miTitle" name="miTitle"></td>
		</tr>
		<tr>
			<th>감독</th>
			<td><input type="text" id="miDir" name="miDir"></td>
		</tr>
		<tr>
			<th>장르</th>
			<td><input type="text" id="miGenre" name="miGenre"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea id="miDesc" name="miDesc" style="resize:none" cols="30" rows="15"></textarea></td>
		</tr>
			<td><button>등록</button></td>
		</tr>
	</table>
</form>
</body>
</html>