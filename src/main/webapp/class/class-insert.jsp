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
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
	String myName = request.getParameter("myName");
	if(myName != null && !myName.isEmpty()){
		String myDesc = request.getParameter("myDesc");
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO CLASS_INFO(CI_NAME,CI_DESC) values('"+ myName +"','"+ myDesc+"')";
		int result = stmt.executeUpdate(sql);
		if(result == 1){
		%>
		<script>
			alert("<%=myName%>님 성공 하였습니다! ");
			location.href="/web/class/class-list.jsp";
		</script>
		<%	
		}
	}
%>
<form>
<table border="1">
	<tr>
		<th>이름</th>
		<td><input type="text" id="myName" name="myName"></td>
	</tr>
	<tr>
		<th>DESC</th>
		<td><textarea id="myDesc" name="myDesc" style="resize:none" cols="30" rows="20"></textarea></td>
	</tr>
	<tr>
		<th><button>등록</button></th>
	</tr>
</table>
</form>
</body>
</html>