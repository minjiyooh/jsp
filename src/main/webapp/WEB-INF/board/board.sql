show tables;

create table board (
  idx  int not null auto_increment,		/* 게시글의 고유번호 */
  mid  varchar(20) not null,					/* 게시글 올린이 아이디 */
  nickName varchar(20) not null,			/* 게시글 올린이 닉네임 */
  title varchar(100)   not null,			/* 게시글 제목 */
  content text not null,							/* 글 내용 */
  readNum int default 0,							/* 글 조회수 */
  hostIp  varchar(40) not null,				/* 글 올린이 IP */
  openSw	char(2)  default 'OK',			/* 게시글 공개여부(OK:공개, NO:비공개) */
  wDate		datetime default now(),			/* 글쓴 날짜 */
  good		int default 0,							/* '좋아요' 클릭 횟수 누적 */
  complaint char(2) default 'NO',			/* 신고글 유무(신고당한글:OK, 정상글:NO) */
  primary key(idx),										/* 기본키 : 고유번호 */
  foreign key(mid) references member(mid)
);
drop table board;
desc board;

insert into board values (default,'admin','관리맨','게시판 서비스를 시작합니다.','즐거운 게시판생활이 되세요.',default,'192.168.50.20',default,default,default);

select * from board;
select * from board where idx = 9;  /* 현재글 */
select idx,title from board where idx > 9 order by idx limit 1;  /* 다음글 */
select idx,title from board where idx < 9 order by idx desc limit 1;  /* 이전글 */

-- 시간으로 비교해서 필드에 값 저장하기
select *, timestampdiff(hour, wDate, now()) as hour_diff from board;

-- 날짜로 비교해서 필드에 값 저장하기
select *, datediff(wDate, now()) as date_diff from board;

-- 관리자는 모든글 보여주고, 일반사용자는 비공개글(openSw='NO')과 신고글(complaint='OK')은 볼수없다. 단, 자신이 작성한 글은 볼수 있다.
select count(*) as cnt from board;
select count(*) as cnt from board where openSW = 'OK' and complaint = 'NO';
select count(*) as cnt from board where openSW = 'OK' and complaint = 'NO';
select count(*) as cnt from board where mid = 'hkd1234';
select * from board where openSW = 'OK' and complaint = 'NO';
select * from board where mid = 'hkd1234';
select * from board where openSW = 'OK' and complaint = 'NO' union select * from board where mid = 'hkd1234';
select * from board where openSW = 'OK' and complaint = 'NO' union all select * from board where mid = 'hkd1234';

select count(*) as cnt from board where openSW = 'OK' and complaint = 'NO' union select count(*) as cnt from board where mid = 'hkd1234';
select sum(a.cnt) from (select count(*) as cnt from board where openSW = 'OK' and complaint = 'NO' union select count(*) as cnt from board where mid = 'hkd1234') as a;
select sum(a.cnt) from (select count(*) as cnt from board where openSW = 'OK' and complaint = 'NO' union select count(*) as cnt from board where mid = ?) as a;

select sum(a.cnt) from (select count(*) as cnt from board where openSW = 'OK' and complaint = 'NO' union select count(*) as cnt from board where mid = 'hkd1234' and (openSW = 'NO' or complaint = 'OK')) as a;


select * from board where openSW = 'OK' and complaint = 'NO' union select * from board where mid = 'hkd1234' order by idx desc;