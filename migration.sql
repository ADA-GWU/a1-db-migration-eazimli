-----Creating student table------------
CREATE TABLE STUDENTS
( 
  st_id integer primary key,
 st_name varchar(15),
  st_last varchar(15)
);

--------inserting data---------------------
insert into students (st_id, st_name, st_last)
values(1,'Konul', 'Gurbanova');
insert into students (st_id, st_name, st_last)
values(2,'Shahnur', 'Isgandarli');
insert into students (st_id, st_name, st_last)
values(3,'Natavan', 'Mammadova');
insert into students (st_id, st_name, st_last)
values(4,'Eljan', 'Azimli');
-------- checking students table-------------

select * from students
-------- creating interest table with fkey from student.st_id-
create table interests (
student_id integer,
interest varchar(15),
foreign key (student_id) references students(st_id)
);
------ Inserting datas-----------

insert into interests (student_id, interest)
values(1,'Tennis');

insert into interests (student_id, interest)
values(1,'football');

insert into interests (student_id, interest)
values(1,'Literature');

insert into interests (student_id, interest)
values(1,'Math');

insert into interests (student_id, interest)
values(2,'Tennis');

insert into interests (student_id, interest)
values(3,'Math');

insert into interests (student_id, interest)
values(3,'Music');

insert into interests (student_id, interest)
values(2,'Football');

insert into interests (student_id, interest)
values(1,'Chemistry');

insert into interests (student_id, interest)
values(3,'Chess');

------Checking interests table------------
select * from interests;

-----------Migration--------------------

--- renaming st_id to student_id------
alter table students
rename column st_id to student_id;

---changing  lenght of st_name and st_last to 30--
alter table
   students
  ALTER COLUMN st_last  type   varchar(30),
  ALTER COLUMN st_name  type  varchar(30);
  
-- Renaming interest table for creating new--
alter table interests
rename to interests_before;
-------creating new interests with array-----
create TABLE interests ( 
 student_id integer,
 interests  text[], 
	foreign key (student_id) references students(student_id)
);
----------inserting datas to new interests---
insert INTO interests 
VALUES(1,'{"Tennis","Literature","Math","Chemistry"}' );

insert INTO interests 
VALUES(2,'{"Tennis","Football"}' );

insert INTO interests 
VALUES(3,'{"Math","Music","Chess"}' );
------checking tables--------------
select * from interests
select *from students
