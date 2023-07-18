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
			<td><textarea id="miDesc name="miDesc" style="resize:none"cols="30" rows="15"></textarea></td>
		</tr>
			<td><button>등록</button></td>
		</tr>
	</table>
</form>
</body>
</html>