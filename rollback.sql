-----------rollback---------
--- disabling interests  --
alter table interests
rename to interests_Array;
-------- backing old interest--
alter table interests_before
rename to interests;
------ backing old column names--
alter table students
rename column student_id to st_id;
------- backing old types lenght-
alter table
   students
  ALTER COLUMN st_last  type   varchar(15),
  ALTER COLUMN st_name  type  varchar(15);
------ checking tables----------
select * from students
select * from interests
