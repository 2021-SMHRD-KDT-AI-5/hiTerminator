1. ȸ�������� ������ ������ �� �ִ� 'web_member'���̺��� ����ÿ�.
   �÷��� : m_email / m_pw / m_tel / m_address

-- �޼��� ��ȣ(������), ������ ���, �޴»��, �޼��� ����, �޼��� ���� �ð�(�ý��� �ð�)
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
increment by 1 -- 1�� ����
start with 1 --���� ����(1���� ����)
minvalue 1 --�ּڰ�(1)
maxvalue 100 --�ִ�(100)
nocycle; --�ִ� ���޽� �ٽ� ������ ������

--�������̺� ����
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