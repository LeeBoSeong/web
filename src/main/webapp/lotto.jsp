<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Random random = new Random();
	
	List<Integer> numList = new ArrayList<>();
			for(int i = 0; i < 6; i++){
				int rNum = random.nextInt(45)+1;
				numList.add(rNum);
			}
%>
<table border ="1">
	<%
		for(int j = 0; j < numList.size(); j++){
	%>	
		<tr>
			<td><%= numList.get(j) %>
		</tr>
	<%
		}
	%>
</table>
</body>
</html>