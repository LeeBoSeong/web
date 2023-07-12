<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "/include/common.jsp" %>
    <% 
    String myName = "나의 이름은 이보성 입니다.";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KD</title>
<link rel = "icon" type ="images/x-icon" href="<%=root %>/images/favicon.png">
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%=myName %><br>
홈페이지
</body>
</html>