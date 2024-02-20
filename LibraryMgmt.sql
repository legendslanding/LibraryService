create schema lms;
use lms;
create table member
( memberId integer primary key,
firstName varchar(20),
lastName varchar(20),
emailAddress varchar(50),
phoneNumber bigint);
create table book
( bookId integer primary key,
author varchar(20),
publisher varchar(20),
yearOfPublish integer);