Q1
create table departments (
department_id int unsigned not null,
name varchar(20) not null,
created_at timestamp DEFAULT CURRENT_TIMESTAMP,
udated_at timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

Q2
alter table people add  department_id int unsigned;

Q3
insert into departments 
(department_id, name)values
(1, "営業"),
(2, "開発"),
(3, "経理"),
(4, "人事"),
(5, "情報システム");


insert into people values
(11, "a", "a@mail", 21, 1, default, default, 1),
(12, "b", "b@mail", 24, 2, default, default, 1),
(13, "c", "c@mail", 32, 1, default, default, 1),
(14, "d", "d@mail", 23, 1, default, default, 2),
(15, "e", "e@mail", 22, 2, default, default, 2),
(16, "f", "f@mail", 31, 1, default, default, 2),
(17, "g", "g@mail", 41, 1, default, default, 2),
(18, "h", "h@mail", 42, 1, default, default, 3),
(19, "i", "i@mail", 33, 2, default, default, 4),
(20, "j", "j@mail", 23, 1, default, default, 1);



insert into reports values
(11, 11, "test content 1", 2012-12-15, 2012-11-15),
(12, 12, "test content 2", 2014-11-15, 2021-11-12),
(13, 14, "test content 3", 2013-12-15, 2022-11-14),
(14, 13, "test content 4", 2015-11-15, 2022-11-11),
(15, 12, "test content 5", 2022-12-15, 2025-11-11),
(16, 14, "test content 6", 2022-11-15, 2025-11-21),
(17, 15, "test content 7", 2023-12-25, 2025-11-22),
(18, 14, "test content 8", 2023-11-13, 2025-11-22),
(19, 13, "test content 9", 2024-11-22, 2025-11-23),
(20, 11, "test content 10", 2012-11-15, 2012-11-15);

Q4
update people set department_id = 1 where department_id is null;

Q5
select name, age from people order by age desc;
 
Q6
name、email、ageの三項目について
peopleというテーブル内で
department_idが1のもの(=部署が開発のもの)に絞って
作られた順に昇順で表示する


Q7
select name from people where age between 20 and 29 OR 40 and 49;

Q8
select * from people where department_id = 1 order by age asc;

Q9
select avg(age) AS average_age from people where gender = 2 and department_id = 2;

Q10
select p.name, d.name, r.content from people p inner join reports r using(person_id) inner join departments d using(department_id);

Q11
select p.name from people p left outer join reports r using(person_id) where report_id is null;
