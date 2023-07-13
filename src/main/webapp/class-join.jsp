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
<h3>회원가입 페이지</h3>
<%
String uiId = request.getParameter("uiId");
if(uiId != null && uiId.length() != 0){
String desc = request.getParameter("desc");
out.println("ID : " + uiId);
out.println("DESC : " + desc);

Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
String sql = "INSERT INTO CLASS_INFO(CI_NAME,CI_DESC)";
sql += "values('" +uiId +"','" +desc+"')";
int result = stmt.executeUpdate(sql);
	if(result == 1){
	%>
	 <script>
	 alert("<%=uiId%>님의 회원가입이 성공하었습니다");
	 location.href="/web/login.jsp";
	 </script>
	<%
	}
}
%>
<form>
	<label for="uiId">ID</label>
	<input type="text" id="uiId" name="uiId"><br>
	<label for="dsec">DSEC</label>
	<input type="password" id="dsec" name="dsec"><br>
	<button>등록</button>
</form>
</body>
</html>