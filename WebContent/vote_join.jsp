<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="layout/db_Connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>지역구의원투표 프로그램</title>
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript">
		function checkValue() {
			var cv = document.data;
			
			if(!cv.V_JUMIN.value) {
				alert("주민번호 입력되지 않았습니다!");
				cv.V_JUMIN.focus();
				return false;
			}
			if(!cv.V_NAME.value) {
				alert("성명이 입력되지 않았습니다!");
				cv.V_NAME.focus();
				return false;
			}
			if(!cv.M_NO.value) {
				alert("후보번호가 선택되지 않았습니다!");
				cv.M_NO.focus();
				return false;
			}
			if(!cv.V_TIME.value) {
				alert("투표시간이 입력되지 않았습니다!");
				cv.V_TIME.focus();
				return false;
			}
			if(!cv.V_AREA.value) {
				alert("투표장소가 입력되지 않았습니다!");
				cv.V_AREA.focus();
				return false;
			}
			if(!cv.V_CONFIRM.value) {
				alert("유권자 확인 선택되지 않았습니다!");
				return false;
			}	
		}
		
		function checkReset() {
			alert("정보를 지우고 처음부터 다시 입력합니다!");
			document.data.reset();
		}
		
		function checkVote() {
			alert("투표하기 정보가 정상적으로 등록되었습니다!");
			document.data.submit();
		}
	</script>
</head>
<body>
	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	<main id="section">
		<h3 class="title">투표하기</h3>
			<form name="data" action="vote_join_p.jsp" onsubmit="return checkValue()">
				<table class="table_line">
					<tr>
						<th>주민번호</th>
						<td><input type="text" name="V_JUMIN" autofocus>예)890101200021</td>
					</tr>
					<tr>
						<th>성명</th>
						<td><input type="text" name="V_NAME"></td>
					</tr>
					<tr>
						<th>후보번호</th>
						<td>
							<select name="M_NO">
								<option value="">후보번호</option>
								<option value="1">[1]김후보</option>
								<option value="2">[2]이후보</option>
								<option value="3">[3]박후보</option>
								<option value="4">[4]조후보</option>
								<option value="5">[5]최후보</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>투표시간</th>
						<td><input type="text" name="V_TIME">예) 0930 (09시30분)</td>
					</tr>
					<tr>
						<th>투표장소</th>
						<td><input type="text" name="V_AREA"></td>
					</tr>
					<tr>
						<th>유권자확인</th>
						<td>
							<input type="radio" name="V_CONFIRM" value="Y">확인
							<input type="radio" name="V_CONFIRM" value="N">미확인
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="투표하기" onclick="return checkVote()">
							<input type="button" value="다시쓰기" onclick="return checkReset()">
						</td>
					</tr>
				</table>
			</form>
	</main>
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>
</body>
</html>