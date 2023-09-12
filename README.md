# 🗳️ 지역구의원투표 프로그램 ver 2024-04-10
### 지역구의원투표 프로그램(정보처리 산업기사 실기)를 JSP를 사용하여 만들었습니다.
Oracle DB를 연동한 웹 프로그래밍<br><br>
<게시물 제작 순서>
1. 프로젝트 준비 - 환경세팅 (encoding - UTF-8) (Apache-tomcat 연결)(ojdbc6.jar import)를 합니다.
2. Dynamic Web Project 생성 *Apache-Tomcat* 연결 확인
3. layout(header, nav, footer, db_connect) 파일과 css파일을 생성
4. ***jsp:include*** 를 활용하여 layout을 활용하여 index.jsp 만들기
5. vote_inquiry_list.jsp, vote_join.jsp, vote_search.jsp, vote_rank.jsp 등을 만듭니다.
6. vote_join.jsp는 가입을 위하여 vote_join_p.jsp로 실질적인 insert를 해줍니다.
