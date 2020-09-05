
create table lecturer_tbl(

idx number(6) not null,
name varchar2(10),
major varchar2(20),
field varchar2(20),
primary key (idx)


);


insert into lecturer_tbl values(1, '김교수', '프트웨어공학', '알고리즘');
insert into lecturer_tbl values(2, '이교수', '프트웨어공학', '인공지능');
insert into lecturer_tbl values(3, '박교수', '프트웨어공학', '프트웨어공학');
insert into lecturer_tbl values(4, '우교수', '프트웨어공학', '알고리즘');
insert into lecturer_tbl values(5, '최교수', '응트웨어공학', '임베디드스템');
insert into lecturer_tbl values(6, '강교수', '응트웨어공학', '멀티미디어');
insert into lecturer_tbl values(7, '황교수', '모트웨어공학', '네트워크');

select * from lecturer_tbl order by idx desc;