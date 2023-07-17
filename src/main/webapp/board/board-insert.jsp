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
<title>게시물 등록</title>
</head>
<body>
<%
String myTitle = request.getParameter("biTitle");
if(myTitle != null && !myTitle.isEmpty()){
	String myText = request.getParameter("biContent");
	String myName = request.getParameter("biWriter");
	
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "INSERT INTO BOARD_INFO(BI_TITLE, BI_CONTENT, BI_WRITER, BI_CREDAT, BI_CNT)";
	sql+= " values ('"+myTitle +"','" + myText+"','"+myName+"', now(),'1')";
	
	int result = stmt.executeUpdate(sql);
	
	if(result == 1){
	%>
	<script>
	alert("<%=myName%>님의 게시글이 정상적으로 작성 되었습니다 ");
	location.href ="/web/board/board-list.jsp";
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
		<td><input type="text" id="biTitle" name="biTitle"></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea id="biContent" name="biContent" style="resize:none"cols="30" rows="15"></textarea>
	</tr>
	<tr>
		<th>작성자</th>
		<td><input type="text" id="biWriter" name="biWriter"></td>
	</tr>
	<tr>
		<th colspan="2"><button>등록</button>
	</tr>
</table>
</form>
</body>
</html>