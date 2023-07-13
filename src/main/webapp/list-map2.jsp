<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
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
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = new HashMap<>();
	map.put("name", "김세희");
	map.put("point", "80");
	map.put("addrs", "서울");
	list.add(map);

	map = new HashMap<>();
	map.put("name", "김용준");
	map.put("point", "77");
	map.put("addrs", "부산");
	list.add(map);

	map = new HashMap<>();
	map.put("name", "이원준");
	map.put("point", "99");
	map.put("addrs", "대전");
	list.add(map);

	map = new HashMap<>();
	map.put("name", "이원기");
	map.put("point", "66");
	map.put("addrs", "대구");
	list.add(map);

	map = new HashMap<>();
	map.put("name", "이보성");
	map.put("point", "55");
	map.put("addrs", "경기");
	list.add(map);

	map = new HashMap<>();
	map.put("name", "이왕균");
	map.put("point", "54");
	map.put("addrs", "광주");
	list.add(map);

	String fname = "";
	String faddrs = "";
	String lname = "";
	String laddrs = "";

	int max = Integer.parseInt(list.get(0).get("point"));
	int min = Integer.parseInt(list.get(0).get("point"));
	for (int i = 0; i < list.size(); i++) {
		if (max < Integer.parseInt(list.get(i).get("point"))) {
			max = Integer.parseInt(list.get(i).get("point"));
			fname = list.get(i).get("name");
			faddrs = list.get(i).get("addrs");
		}
		if (min > Integer.parseInt(list.get(i).get("point"))) {
			min = Integer.parseInt(list.get(i).get("point"));
			lname = list.get(i).get("name");
			laddrs = list.get(i).get("addrs");
		}
	}
	out.println("최고점수 : " + max + " || 최소점수 : " + min);
	out.println("최고이름 : " + fname + " || 최소이름 : " + lname);
	out.println("최고주소 : " + faddrs + " || 최소주소 : " + laddrs);
	%>
</body>
</html>