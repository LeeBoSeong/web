<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@page import="com.web.vo.HumanVo"%>
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

String[] names = {"김홍균","김아영","이명관","이왕균","이보성"};
int[] randomNums = new int[5];
Random r = new Random();
for(int i = 0; i < randomNums.length; i++){
	int rNum = r.nextInt(5);
	randomNums[i] = rNum;
	for(int j = 0; j < i; j++){
		if(randomNums[j] == rNum){
			i--;
			break;
		}
	}
}
for(int i = 0; i < randomNums.length; i++) {
	 out.println(randomNums[i]);
}

List<HumanVo> humanList = new ArrayList<>();


%>

</body>
</html>