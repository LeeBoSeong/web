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
	List<Integer> list = new ArrayList<>();
			for(int i = 0; i < 10; i ++){
					int rNum = random.nextInt(99)+1;
					if(list.indexOf(i) == -1){
					list.add(rNum);
				}else{
					i--;
				}
			}
			int max = list.get(0);
			int min = list.get(0);
			
			for(int j = 1; j < list.size(); j++){
					if(max < list.get(j) ){
						max = list.get(j);
					}
					if(min > list.get(j)){
						min = list.get(j);
					}
				}
%>
<%for(int k = 0; k < list.size(); k++){
	out.println(list.get(k));
}
%>

<%="최댓값 :" + max %>
<%="최소값 :" + min %>
</body>
</html>