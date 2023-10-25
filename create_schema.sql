-- Schema
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer
);

CREATE TABLE addresses (
  id          serial PRIMARY KEY,
  line_1      varchar(65) NOT NULL,
  city        varchar(65) NOT NULL,
  state       varchar(25) NOT NULL,
  zipcode     integer
);

CREATE TABLE classes (
  id          serial PRIMARY KEY,
  name        varchar(65) NOT NULL,
  credits     integer
);

CREATE TABLE enrollments (
  id          serial PRIMARY KEY,
  student_id  integer,
  class_id    integer,
  grade       varchar(1)
);
