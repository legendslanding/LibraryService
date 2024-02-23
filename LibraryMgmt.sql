create schema lms;
use lms;

create table address(address_id int primary key,line1 varchar(30),line2 varchar(30),city varchar(20),state char(2),zip int);

create table library_member(member_id int primary key,first_name varchar(25),last_name varchar(25),email_address varchar(35),phone_number bigint,membership_level varchar(10),address_id int,foreign key(address_id) references address(address_id));

create table book(book_id int primary key,title varchar(45),author_name varchar(50), year_published int,quantity int);

create table book_isbn(isbn bigint primary key,book_id int,foreign key(book_id) references book(book_id)) ;

create table checkout(id int primary key,isbn bigint,member_id int,checkout_date datetime,due_date datetime,is_returned boolean,foreign key(isbn) references book_isbn(isbn),foreign key(member_id) references library_member(member_id));






-- Insert data into the address table
INSERT INTO address (address_id, line1, line2, city, state, zip) VALUES
(1, '123 Main St', '', 'Springfield', 'IL', 62701),
(2, '456 Oak Ave', 'Apt 2B', 'Riverside', 'CA', 92501),
(3, '789 Elm St', '', 'Lexington', 'KY', 40502),
(4, '101 Pine St', '', 'Portland', 'OR', 97201),
(5, '222 Maple Ave', 'Suite 100', 'Austin', 'TX', 78701),
(6, '333 Cedar St', '', 'Seattle', 'WA', 98101);

-- Insert data into the library_member table
INSERT INTO library_member (member_id, first_name, last_name, email_address, phone_number, membership_level, address_id) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 1234567890, 'Basic', 1),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 9876543210, 'Premium', 2),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 5551112222, 'Basic', 3),
(4, 'Emily', 'Brown', 'emily.brown@example.com', 3334445555, 'Basic', 4),
(5, 'William', 'Jones', 'william.jones@example.com', 6667778888, 'Premium', 5),
(6, 'Sophia', 'Wilson', 'sophia.wilson@example.com', 9998887777, 'Basic', 6),
(7, 'David', 'Martinez', 'david.martinez@example.com', 2223334444, 'Premium', 1),
(8, 'Olivia', 'Taylor', 'olivia.taylor@example.com', 4445556666, 'Basic', 2),
(9, 'Daniel', 'Anderson', 'daniel.anderson@example.com', 7778889999, 'Basic', 3),
(10, 'Ava', 'Thomas', 'ava.thomas@example.com', 8889990000, 'Premium', 4);

-- Insert data into the book table
INSERT INTO book (book_id, title, author_name, year_published, quantity) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 10),
(2, 'To Kill a Mockingbird', 'Harper Lee', 1960, 15),
(3, '1984', 'George Orwell', 1949, 12),
(4, 'Pride and Prejudice', 'Jane Austen', 1813, 20),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 1951, 8),
(6, 'The Hobbit', 'J.R.R. Tolkien', 1937, 18);




-- Insert data into the book_isbn table
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,1);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,2);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,3);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,4);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,5);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,6);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,6);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,5);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,4);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,3);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,2);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,1);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,1);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,2);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,3);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,4);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,5);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,6);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,1);
insert into book_isbn(SELECT FLOOR(1000000000000 + RAND() * 9000000000000) AS random_isbn,2);


select * from book_isbn;
select * from book;
select * from library_member;
select * from address;
select * from checkout;









