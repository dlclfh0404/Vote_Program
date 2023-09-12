<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<%@ include file="layout/db_Connect.jsp" %>
<%
	String sql = "select v_name, "
	           + "       case when substr(v_jumin,7,1) in ('1','2','5','6') "
	           + "                 then '19' else '20' end "
	           + "                 ||substr(v_jumin,1,2)||'년'|| "
	           + "                 substr(v_jumin,3,2)||'월'|| "
	           + "                 substr(v_jumin,5,2)||'일생' v_jumin, "
	           + "       '만'||floor(months_between(sysdate, "
	           + "       to_date((case when substr(v_jumin,7,1) in ('1','2','5','6') then '19' else '20' end) "
	           + "       || substr(v_jumin,1,6),'yyyymmdd'))/12)||'세' v_age, "
	           + "       DECODE(substr(v_jumin,6,1),'1','남','2','여','3','남','4','여') v_gender, "
	           + "       m_no, substr(v_time,1,2)||':'||substr(v_time,3,2) v_time, "
	           + "       DECODE(v_confirm,'Y','확인','N','미확인') v_confirm "
	           + "from tbl_vote_202005";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>지역구의원투표 프로그램</title>
	<link rel="stylesheet" href="css/style.css?ver1.1">
</head>
<body>
	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	<main id="section">
		<h3 class="title">후보검수조회</h3>
			<div class="scroll">
				<table class="table_line">
					<tr style="background: #D7DF01">
						<th>성명</th>
						<th>생년월일</th>
						<th>나이</th>
						<th>성별</th>
						<th>후보번호</th>
						<th>투표시간</th>
						<th>유권자확인</th>
					</tr>
				<%
					while(rs.next()) {
				%>
					<tr align = "center">
						<td><%= rs.getString("v_name") %></td>
						<td><%= rs.getString("v_jumin") %></td>
						<td><%= rs.getString("v_age") %></td>
						<td><%= rs.getString("v_gender") %></td>
						<td><%= rs.getString("m_no") %></td>
						<td><%= rs.getString("v_time") %></td>
						<td><%= rs.getString("v_confirm") %></td>
					</tr>
				<% 
					} 
				%>
				</table>
			</div>
	</main>
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>
</body>
</html>