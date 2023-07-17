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
<%
	String myId = request.getParameter("myId");
	if(myId != null && !myId.isEmpty()){
		String myPwd = request.getParameter("myPwd");
		String myName = request.getParameter("myName");
		
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO user_info(UI_ID, UI_PWD, UI_NAME) values('"+myId+"','" + myPwd +"','" + myName+"')";
		int result = stmt.executeUpdate(sql);
		
		if(result == 1){
			%>
			<script>
				alert("<%=myName%>님 성공!");
				location.href = "/web/user/user-list.jsp";
			</script>
			<%
		}
	}
%>


<jsp:include page="/include/header.jsp"/>
<form>
<table border="1">
	<tr>
		<th>아이디</th>
		<td><input type="text" id="myId" name="myId"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="text" id="myPwd" name="myPwd"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" id="myName" name="myName"></td>
	</tr>
	<tr>
		<th><button>등록</button></th>
	</tr>
</table>
</form>
</body>
</html>