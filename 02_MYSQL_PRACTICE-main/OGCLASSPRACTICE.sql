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

insert into class
(student_no, student_name, gender, github_id, email, mbti, subject_no)
values(null, '박태근', '남', ''),
      (null, '지동현', '남', ''),
      (null, '김강현', '남', ''),
      (null, '이득규', '남', ''),
      (null, '홍주현', '여', ''),
      (null, '양혜연', '여', ''),
      (null, '이규섭', '남', ''),
      (null, '전유안', '남', ''),
      (null, '박성은', '남', ''),
      (null, '박효찬', '남', ''),
      (null, '이의정', '남', ''),
      (null, '권은혜', '여', ''),
      (null, '권보현', '여', ''),
      (null, '배하은', '여', ''),
      (null, '강연진', '여', ''),
      (null, '강진영', '여', '');



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