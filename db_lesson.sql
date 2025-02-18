Q1
create table departments (
department_id int unsigned not null,
name varchar(20) not null,
created_at timestamp DEFAULT CURRENT_TIMESTAMP,
udated_at timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

Q2
alter table people add  department_id int unsigned;

ask
emailの直後にdepartment_idカラムを追加するためにはどんな記述が必要でしょうか?
->
alter table people add  department_id int unsigned after email;

Q3
insert into departments 
(department_id, name)values
(1, "営業"),
(2, "開発"),
(3, "経理"),
(4, "人事"),
(5, "情報システム");


insert into people 
(person_id, name, email, age, gender)values
(11, "a", "a@mail", 21, 1, 1),
(12, "b", "b@mail", 24, 2, 1),
(13, "c", "c@mail", 32, 1, 1),
(14, "d", "d@mail", 23, 1, 2),
(15, "e", "e@mail", 22, 2, 2),
(16, "f", "f@mail", 31, 1, 2),
(17, "g", "g@mail", 41, 1, 2),
(18, "h", "h@mail", 42, 1, 3),
(19, "i", "i@mail", 33, 2, 4),
(20, "j", "j@mail", 23, 1, 1);



insert into reports 
(report_id, person_id, content)values
(11, 11, "test content 1"),
(12, 12, "test content 2"),
(13, 14, "test content 3"),
(14, 13, "test content 4"),
(15, 12, "test content 5"),
(16, 14, "test content 6"),
(17, 15, "test content 7"),
(18, 14, "test content 8"),
(19, 13, "test content 9"),
(20, 11, "test content 10"),

Q4
update people set department_id = 1 where department_id is null;

Q5
select name, age from people where gender = 1 order by age desc;
 
Q6
name、email、ageの三項目について
peopleというテーブル内で
department_idが1のもの(=部署が開発のもの)に絞って
作られた順に昇順で表示する


Q7
select name from people where (gender = 2 and age between 20 and 29) OR (gender = 1 and age between 40 and 49);

Q8
select * from people where department_id = 1 order by age asc;

Q9
select avg(age) AS average_age from people where gender = 2 and department_id = 2;

Q10
select p.name, d.name, r.content from people p inner join reports r using(person_id) inner join departments d using(department_id);

Q11
select p.name from people p left outer join reports r using(person_id) where report_id is null;
