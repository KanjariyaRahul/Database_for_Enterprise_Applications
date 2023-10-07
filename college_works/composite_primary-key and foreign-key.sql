DROP table dablu;
 CREATE TABLE dablu(
    MATERIAL VARCHAR2(50) ,
    COLOR VARCHAR2(50),
    VOLUME NUMBER(3),
    UNIT VARCHAR2(10),
    constraint coma_pk primary key (MATERIAL,COLOR)
);

 insert into dablu values('','blue',1,'lietr');


DROP table student purge;
CREATE table student(
    roll_no number(3),
    program varchar2(10),
    semester number(1),
    division varchar2(2),
    name varchar2(20),
    city varchar2(20),
     primary key (roll_no,program,semester,division)
);

insert into student values (101,'mca',1 , 'a', 'rahul','jamnagar');
insert into student values (102,'mca', 1, 'b', 'paras','dharol');

DROP table result purge;
CREATE table result(
    reault_id number(5) primary key,
    grade varchar2(2),
    roll_no number(3),
    semester number(1),
    program varchar2(10),
    division varchar2(2),
    foreign key (roll_no,program,semester,division) references student
);

insert into result values (11111,'aa',101,1,'mca','a');
insert into result values (11112,'bb',103,1,'mca','b');
