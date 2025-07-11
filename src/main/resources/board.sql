-- 시퀀스 객체 생성
create sequence seq_board;
-- 시퀀스 삭제(차후에 활용)
drop sequence seq_board;

create table tbl_board(
	bno number(10, 0), 					-- 게시물 번호
	title varchar2(200) not null,		-- 제목
	content varchar2(2000) not null,	-- 내용
	writer varchar2(50) not null,		-- 작성자(차후에 member와 연동)
	regdate date default sysdate,		-- 작성일 (자동으로 DB날짜가 입력)
	updatedate date default sysdate		-- 수정일 (자동으로 DB날짜가 입력)
); -- board 테이블 생성


alter table tbl_board add constraint pk_board primary key (bno);
-- tbl_board 구조 변경(수정) 기본키를 bno로 지정함.

insert into TBL_BOARD (bno, title, content, writer) 
values (seq_board.nextval, '테스트 제목 1', '테스트 내용 1', 'user00');
insert into TBL_BOARD (bno, title, content, writer) 
values (seq_board.nextval, '테스트 제목 2', '테스트 내용 2', 'user00');
insert into TBL_BOARD (bno, title, content, writer) 
values (seq_board.nextval, '테스트 제목 3', '테스트 내용 3', 'user00');
insert into TBL_BOARD (bno, title, content, writer) 
values (seq_board.nextval, '테스트 제목 4', '테스트 내용 4', 'user00');
insert into TBL_BOARD (bno, title, content, writer) 
values (seq_board.nextval, '테스트 제목 5', '테스트 내용 5', 'user00');
insert into TBL_BOARD (bno, title, content, writer) 
values (seq_board.nextval, '테스트 제목 6', '테스트 내용 6', 'user00');
insert into TBL_BOARD (bno, title, content, writer) 
values (seq_board.nextval, '테스트 제목 7', '테스트 내용 7', 'user00');
insert into TBL_BOARD (bno, title, content, writer) 
values (seq_board.nextval, '테스트 제목 8', '테스트 내용 8', 'user00');

select * from tbl_board;
