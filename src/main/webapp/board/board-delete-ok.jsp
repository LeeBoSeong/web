<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ include file = "/include/common.jsp" %>
<%
String biNum = request.getParameter("biNum");
Connection con = DBCon.getCon();
String sql = "DELETE FROM BOARD_INFO WHERE BI_NUM=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, biNum);

int result = pstmt.executeUpdate();
if(result != 1){
%>
	<script>
		alert("이미 삭제된 게시물 입니다");
		location.href= '<%=root%>/board/board-list.jsp';
	</script>
<%
	return;
}
%>
	<script>
		alert("정상 삭제 완료");
		location.href= '<%=root%>/board/board-list.jsp';
	</script>
<%=biNum%>