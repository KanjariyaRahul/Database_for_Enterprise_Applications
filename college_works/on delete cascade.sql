-- on delete cascade------

create table college ( 
    clg_code number (3) primary key,
    clg_name varchar2(30) not null
); 

insert into college values(101,'czmg');
insert into college values(102,'virani');


CREATE TABLE student (

    ern_no number(4) primary key,
    student_name varchar2(20) not null,
    clg_code number(3) REFERENCES college on delete CASCADE
);

insert into student vlaues(1111,'rahul',101);
insert into student vlaues(1123,'jay',101);
insert into student vlaues(1234,'abhay',102);
insert into student vlaues(1235,'hardik',102);


delete from college where clg_code = 102;