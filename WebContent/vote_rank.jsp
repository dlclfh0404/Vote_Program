<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<%@ include file="layout/db_Connect.jsp" %>
<%
	String sql = "select a.m_no, a.m_name, sum(b.m_no) rank "
			   + "       from tbl_member_202005 a, tbl_vote_202005 b "
			   + "       where a.m_no = b.m_no and b.v_confirm = 'Y' "
			   + "       group by a.m_no, a.m_name "
			   + "       order by rank desc";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>지역구의원투표 프로그램</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	<main id="section">
		<h3 class="title">후보자등수</h3>
			<table class="table_line">
				<tr style="background: #D7DF01">
					<th>후보번호</th>
					<th>성명</th>
					<th>총투표건수</th>
				</tr>
			<%
				while(rs.next()) {
			%>
				<tr align = "center">
					<td><%= rs.getString("M_NO") %></td>
					<td><%= rs.getString("m_name") %></td>
					<td><%= rs.getString("rank") %></td>
				</tr>
			<% 
				} 
			%>
			</table>
	</main>
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>
</body>
</html>