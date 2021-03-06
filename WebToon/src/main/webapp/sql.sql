1. 회원가입한 정보를 저장할 수 있는 'web_member'테이블을 만드시오.
   컬럼명 : m_email / m_pw / m_tel / m_address

-- 메세지 번호(시퀀스), 보내는 사람, 받는사람, 메세지 내용, 메세지 보낸 시간(시스템 시간)
create table web_message(
	num number(10),
	sendName varchar2(100),
	receiveEmail varchar2(100),
	message varchar2(500),
	m_date date
)
drop table web_member;
drop sequence num_message;

select * from t_members where member_id = 'admin';
select * from consult
create sequence num_message
increment by 1 -- 1씩 증가
start with 1 --시작 숫자(1부터 시작)
minvalue 1 --최솟값(1)
maxvalue 100 --최댓값(100)
nocycle; --최댓값 도달시 다시 시작할 것인지

--웹툰테이블 생성
create table webtoons(
	title varchar2(100),
	vol_title varchar2(100),
	artist varchar2(100),
	thum varchar2(1000),
	view_ varchar2(100),
	star varchar2(100),
	star_in varchar2(100),
	like_ varchar2(100),
	comment_ varchar2(100),
	view_star varchar2(100),
	view_like varchar2(100),
	comment_pos varchar2(100),
	comment_neg varchar2(100),
	vol varchar2(100)
);
drop table webtoons;

select * from webtoons;

select * from consult;


select * from num_message;

select * from t_members where member_id='lk';

select * from T_MEMBERS;