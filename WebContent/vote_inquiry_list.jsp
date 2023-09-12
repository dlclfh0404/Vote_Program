<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<%@ include file="layout/db_Connect.jsp" %>
<%
	String sql = "Select a.M_NO, a.M_NAME, b.P_NAME, "
	           + "       CASE WHEN a.P_SCHOOL = '1' then '고졸' "
	           + "            WHEN a.P_SCHOOL = '2' then '학사' "
	           + "            WHEN a.P_SCHOOL = '3' then '석사' "
	           + "            WHEN a.P_SCHOOL = '4' then '박사' end P_SCHOOL, "
	           + "       SUBSTR(a.M_JUMIN,1,6)||'-'||SUBSTR(a.M_JUMIN,7,13) M_JUMIN, "
	           + "       a.M_CITY, P_TEL1||'-'||P_TEL2||'-'||P_TEL3 P_TEL "
	           + "from TBL_MEMBER_202005 a, TBL_PARTY_202005 b "
	           + "WHERE a.P_CODE = b.P_CODE "
	           + "order by a.M_NO";

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
		<h3 class="title">후보조회</h3>
			<table class="table_line">
				<tr style="background: #D7DF01">
					<th>후보번호</th>
					<th>성명</th>
					<th>소속정당</th>
					<th>학력</th>
					<th>주민번호</th>
					<th>지역구</th>
					<th>대표전화</th>
				</tr>
			<%
				while(rs.next()) {
			%>
				<tr align = "center">
					<td><%= rs.getString("M_NO") %></td>
					<td><%= rs.getString("M_NAME") %></td>
					<td><%= rs.getString("P_NAME") %></td>
					<td><%= rs.getString("P_SCHOOL") %></td>
					<td><%= rs.getString("M_JUMIN") %></td>
					<td><%= rs.getString("M_CITY") %></td>
					<td><%= rs.getString("P_TEL") %></td>
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