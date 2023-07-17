<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.security.Timestamp"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
String myTitle = request.getParameter("myTitle");
if(myTitle != null && myTitle.length() != 0){
	out.println("제목 : " + myTitle);
	String myText = request.getParameter("myText");
	out.print("내용 : " + myText);
	String myName = request.getParameter("myName");
	String myCnt = request.getParameter("myCnt");

	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "INSERT INTO BOARD_INFO(BI_TITLE, BI_CONTENT, BI_WRITER, BI_CREDAT, BI_CNT)";
	sql += "values ('"+myTitle +"','" + myText+"','"+myName+"', now(),'"+myCnt+"')";
	int result = stmt.executeUpdate(sql);
	if(result == 1){
		%>
		<script>
			alert("<%=myName%>님의 게시글이 작성 되었습니다");
			location.href="/web/login.jsp";
		</script>
		<%
	}
}
%>
	<h3>게시글 작성</h3>
	<form>
		<label for="myTitle">제목</label>
		<input type= "text" id="myTl" name="myTitle"><br>
		<label for="mtText">게시글 작성</label>
		<input type = "text" id="myText" name="mtText"><br>
		<label for="writer">작성자</label>
		<input type="text" id="writer" name="myName"><br>
		<label for="cnt">조회수</label>
		<input type="text" id="cnt" name="myCnt"><br>
		<button>등록</button>
	</form>
</body>
</html>