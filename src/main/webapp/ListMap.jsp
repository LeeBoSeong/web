<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
List<String> names = new ArrayList<>();
names.add("김세희");
names.add("김용준");
names.add("이원준");
names.add("이원기");
names.add("이보성");
names.add("이왕균");

List<Integer> points = new ArrayList<>();
points.add(80);
points.add(77);
points.add(99);
points.add(66);
points.add(55);
points.add(54);

List<String> addrs = new ArrayList<>();
addrs.add("서울");
addrs.add("부산");
addrs.add("대전");
addrs.add("대구");
addrs.add("경기");
addrs.add("광주");

int max = points.get(0);
int min = points.get(0);

String fname = "";
String fadrr = "";
String lname = "";
String ladrr = "";
for(int i = 0; i < points.size(); i ++){
	if(max < points.get(i)){
		max = points.get(i);
		fname = names.get(i);
		fadrr = addrs.get(i);
		
	}
	if(min > points.get(i)){
		min = points.get(i);
		lname = names.get(i);
		ladrr = addrs.get(i);
	}
}
out.println("최고점인 사람: " + fname + "||주소 : " + fadrr);
out.println("최저점인 사람: " + lname + "||주소 : " +ladrr);
%>

</body>
</html>