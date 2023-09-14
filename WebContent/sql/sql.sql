select * from emp_master;

-- create table TBL_VOTE_202005 투표이력테이블 명세서--
create table tbl_vote_202005 (
	   v_jumin   char(13)      primary key, -- 주민번호 
	   v_name    varchar2(20),              -- 성 명   
	   m_no      char(1),                   -- 후보번호
	   v_time	 char(4),					-- 투표시간
	   v_area    char(20),					-- 투표장소
	   v_confirm char(1)					-- 유권자확인
);

desc tbl_vote_202005; -- desc
delete table tbl_vote_202005; -- delete

-- Insert table TBL_VOTE_202005 --
insert into tbl_vote_202005 
       values ('990101100011', '김유권', '1', '0930', '제1투표장', 'N');
insert into tbl_vote_202005 
       values ('890101200021', '이유권', '2', '0930', '제1투표장', 'N');
insert into tbl_vote_202005 
       values ('690101100031', '박유권', '3', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005 
       values ('590101200041', '홍유권', '4', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005 
       values ('790101100051', '조유권', '5', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005 
       values ('890101200061', '최유권', '1', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005 
       values ('590101100071', '지유권', '1', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005 
       values ('490101200081', '장유권', '3', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005 
       values ('790101100091', '정유권', '3', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005 
       values ('890101200101', '강유권', '4', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005 
       values ('990101100111', '신유권', '5', '0930', '제1투표장', 'Y');
insert into tbl_vote_202005 
       values ('790101200121', '오유권', '1', '1330', '제1투표장', 'Y');
insert into tbl_vote_202005 
       values ('690101100131', '현유권', '4', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005 
       values ('890101100141', '왕유권', '2', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005 
       values ('990101100151', '유유권', '3', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005 
       values ('790101100161', '한유권', '2', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005 
       values ('890101100171', '문유권', '4', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005 
       values ('990101100181', '양유권', '2', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005 
       values ('990101100191', '구유권', '4', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005 
       values ('790101100201', '황유권', '5', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005 
       values ('690101100211', '배유권', '3', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005 
       values ('790101100221', '전유권', '3', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005 
       values ('990101100231', '고유권', '1', '1330', '제2투표장', 'Y');
insert into tbl_vote_202005 
       values ('590101100241', '권유권', '3', '1330', '제2투표장', 'Y');
       
select * from tbl_vote_202005;


-- create table tbl_member_202005 후보자테이블 명세서--
create table tbl_member_202005(
	   m_no     char(1)      primary key,   -- 후보번호
	   m_name   varchar2(20),				-- 성명
	   p_code   char(2),					-- 소속정당
	   p_school char(1),					-- 최종학력
	   m_jumin  char(13),					-- 주민번호
	   m_city   varchar2(20)				-- 지역
);

desc tbl_member_202005; -- desc
delete table tbl_member_202005; -- delete


-- Insert table tbl_member_202005 --
insert into tbl_member_202005 values ('1', '김후보', 'P1', '1', '6603011999991', '수선화동');
insert into tbl_member_202005 values ('2', '이후보', 'P2', '3', '5503011999992', '민들래동');
insert into tbl_member_202005 values ('3', '박후보', 'P3', '2', '7703011999993', '나팔꽃동');
insert into tbl_member_202005 values ('4', '조후보', 'P4', '2', '8803011999994', '진달래동');
insert into tbl_member_202005 values ('5', '최후보', 'P5', '3', '9903011999995', '개나리동');

select * from tbl_member_202005;

-- create table tbl_party_202005 정당코드테이블 명세서--
create table tbl_party_202005(
	   p_code    char(2)       primary key,  -- 정당코드
	   p_name    varchar2(20),				 -- 명칭
	   p_idate   date,						 -- 등록년월일
	   p_reader  varchar2(20),				 -- 대표자
	   p_tel1    char(3),					 -- 전화번호1
	   p_tel2    char(4),					 -- 전화번호2
	   p_tel3    char(4)					 -- 전화번호3
);

desc tbl_party_202005; -- desc
delete table tbl_party_202005; -- delete


-- Insert table tbl_party tbl_party_202005 --
insert into tbl_party_202005 values ('P1', 'A정당', '2010-01-01', '위대표', '02', '1111', '0001');
insert into tbl_party_202005 values ('P2', 'B정당', '2010-02-01', '명대표', '02', '1111', '0002');
insert into tbl_party_202005 values ('P3', 'C정당', '2010-03-01', '기대표', '02', '1111', '0003');
insert into tbl_party_202005 values ('P4', 'D정당', '2010-04-01', '옥대표', '02', '1111', '0004');
insert into tbl_party_202005 values ('P5', 'E정당', '2020-05-01', '임대표', '02', '1111', '0005');

select * from tbl_party_202005;



-- vote_inquiry_list 조회문
select a.M_NO, a.M_NAME, b.P_NAME,
	   CASE WHEN a.P_SCHOOL = '1' then '고졸'
	        WHEN a.P_SCHOOL = '2' then '학사'
	        WHEN a.P_SCHOOL = '3' then '석사'
	        WHEN a.P_SCHOOL = '4' then '박사' end P_SCHOOL,
	   SUBSTR(a.M_JUMIN,1,6)||'-'||SUBSTR(a.M_JUMIN,7,13) M_JUMIN,
	   a.M_CITY, P_TEL1||'-'||P_TEL2||'-'||P_TEL3 P_TEL
       from TBL_MEMBER_202005 a, TBL_PARTY_202005 b
       WHERE a.P_CODE = b.P_CODE
       order by a.M_NO;
       
-- vote_join.jsp sql
insert into tbl_vote_202005 values(?, ?, ?, ?, ?, ?); 

-- vote_search.jsp 조회문
select v_name, 
	   case when substr(v_jumin,7,1) in ('1','2','5','6') 
	             then '19' else '20' end 
	             ||substr(v_jumin,1,2)||'년'||
	             substr(v_jumin,3,2)||'월'||
	             substr(v_jumin,5,2)||'일생' v_jumin,
	   '만'||floor(months_between(sysdate,
	   to_date((case when substr(v_jumin,7,1) in ('1','2','5','6') then '19' else '20' end)
       || substr(v_jumin,1,6),'yyyymmdd'))/12)||'세' v_age,
       DECODE(substr(v_jumin,6,1),'1','남','2','여','3','남','4','여') v_gender,
       m_no, substr(v_time,1,2)||':'||substr(v_time,3,2) v_time,
       DECODE(v_confirm,'Y','확인','N','미확인') v_confirm 
from tbl_vote_202005;

-- vote_rank.jsp sql
select a.m_no, a.m_name, sum(b.m_no) rank
	from tbl_member_202005 a, tbl_vote_202005 b
	where a.m_no = b.m_no and b.v_confirm = 'Y'
	group by a.m_no, a.m_name
	order by rank desc;
