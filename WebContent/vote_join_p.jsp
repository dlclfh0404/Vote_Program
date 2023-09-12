<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<%@ include file="layout/db_Connect.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String sql = "insert into tbl_vote_202005 values(?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
		
	pstmt.setString(1, request.getParameter("V_JUMIN"));
	pstmt.setString(2, request.getParameter("V_NAME"));
	pstmt.setString(3, request.getParameter("M_NO"));
	pstmt.setString(4, request.getParameter("V_TIME"));
	pstmt.setString(5, request.getParameter("V_AREA"));
	pstmt.setString(6, request.getParameter("V_CONFIRM"));
	
	pstmt.executeUpdate();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>지역구의원투표 프로그램</title>
</head>
<body>
	<jsp:forward page="vote_join.jsp"></jsp:forward>
</body>
</html>