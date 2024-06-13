drop table if exists class;

create table if not exists class
(
    student_no int auto_increment,
    primary key (student_no),
    student_name varchar(255) not null,
    gender varchar(5) not null check (gender in ('남', '여')),
    github_id varchar(255) not null unique,
    email varchar(255) not null unique,
    mbti varchar(10),
    subject_no int,
    foreign key (subject_no) references favorite_subject (subject_no)
);

drop table if exists favorite_subject;

create table if not exists favorite_subject
(
    subject_no int auto_increment,
    subject_name varchar(255) not null unique,
    primary key (subject_no)
);

insert into favorite_subject
(subject_no, subject_name)
values(null, 'JAVA'),
      (null, 'MYSQL'),
      (null, 'JDBC'),
      (null, 'MYBATIS'),
      (null, 'SPRING'),
      (null, 'REACT');