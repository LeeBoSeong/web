<%@page import="java.security.interfaces.RSAKey"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ include file = "/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세화면</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
String biNum = request.getParameter("biNum");
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
String sql = "SELECT BI_NUM, BI_TITLE, BI_CONTENT, BI_WRITER, BI_CREDAT, BI_CNT FROM BOARD_INFO";
sql += " WHERE BI_NUM=" + biNum;
ResultSet rs = stmt.executeQuery(sql);
if(!rs.next()){
%>
	<script>
		alert('이미 삭제된 게시물 입니다.');
		history.back();
	</script>
<%	
	return ;
}
%>
<table border="1">
	<tr>
		<th>제목</th>
		<td><%=rs.getString("BI_TITLE") %></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><%=rs.getString("BI_WRITER") %></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><%=rs.getString("BI_CONTENT") %></td>
	</tr>
	<tr>
		<th>작성일자</th>
		<td><%=rs.getString("BI_CREDAT") %></td>
	</tr>
	<tr>
		<th>조회수</th>
		<td><%=rs.getInt("BI_CNT")%></td>
	</tr>
	<tr>
		<th colspan="2">
		<button onclick ="location.href='<%=root%>/board/board-update.jsp?biNum=<%=biNum%>'">수정</button>
		<button>삭제</button>
		</th>
	</tr>
</table>
</body>
</html>