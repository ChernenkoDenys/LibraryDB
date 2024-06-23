

CREATE TABLE Users (
	user_id SERIAL PRIMARY KEY,
	first_name varchar(55),
	last_name varchar(75),
	phone_number varchar(15),
	email varchar(100),
	user_name varchar(100),
	registration_date date
	
);


CREATE TABLE Employees (
	Employee_ID SERIAL PRIMARY KEY,
	first_name varchar(55),
	last_name varchar(75),
	phone_number varchar(15),
	email varchar(100),
	salary numeric,
	experience integer
);


CREATE TABLE Authors (
	author_id SERIAL PRIMARY KEY,
	first_name varchar(60),
	last_name varchar(75),
	country varchar(100),
	birthday_date date
);


CREATE TABLE Books (
	book_id SERIAL PRIMARY KEY,
	title varchar(100),
	description text,
	isbn varchar(20),
	publication_date date,
	is_available boolean,
	author_id integer,
	FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);


CREATE TABLE Borrowed_Books (
	borrow_id SERIAL PRIMARY KEY,
	book_id INTEGER,
    user_id INTEGER,
    employee_id INTEGER,
	FOREIGN KEY (book_id) REFERENCES Books(book_id),
	FOREIGN KEY (user_id) REFERENCES Users(user_id),
	FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
	borrow_date date,
	return_date date
);

ALTER TABLE Users 
ADD CONSTRAINT unique_user_name UNIQUE (user_name),
ADD CONSTRAINT unique_email UNIQUE (email),
ADD CONSTRAINT unique_phone UNIQUE (phone_number);


ALTER TABLE Books
ADD CONSTRAINT unique_isbn UNIQUE(isbn)
	
INSERT INTO Users (
	first_name,
	last_name,
	phone_number, 
	email,
	user_name,
	registration_date 
) VALUES
 ('John', 'Doe', '+123456789', 'john.doe@example.com', 'johndoe123', '2024-06-23'),
 ('Test', 'Rofl', '+123436789', 'test.doe@example.com', 'test2', '2024-06-23'),
 ('Testz', 'Rofl2', '+122456789', 'test2.doe@example.com', 'test', '2024-06-23');


	
INSERT INTO Employees (
	first_name,
	last_name,
	phone_number,
	email,
	salary,
	experience
) VALUES
 ('Oleg', 'Vrotar', '+1234567139', 'oleg.doe@example.com', '1500', '3'),
 ('Roskit', 'Napad', '+123436229', 'rostik.doe@example.com', '1500', '4'),
 ('Denys', 'Kroos', '+1224563339', 'denys.doe@example.com', '3000', '11');




INSERT INTO Authors (
	first_name,
	last_name,
	country,
	birthday_date 
) VALUES
 ('Andriy', 'Yarmolenko', 'Ukraine', '2024-06-06'),
 ('David', 'Villa', 'Spain', '2022-06-06'),
 ('Leo', 'Messi', 'Argentina', '2020-06-06');




INSERT INTO Books (
	title,
	description,
	isbn,
	publication_date,
	is_available,
	author_id
) VALUES
 ('Test', 'abra', 'some-isbn-code', '2024-06-06', true, 1),
 ('Test1', 'abraabra', 'some-isbn-code-2', '2022-06-06', true, 2),
 ('Test2', 'abraabraabra', 'some-isbn-code-3', '2020-06-06', true, 3);



INSERT INTO Borrowed_Books (
	book_id,
    user_id,
    employee_id,
	borrow_date,
	return_date
) VALUES
 (1, 1, 2, '2024-06-06','2025-06-06'),
 (1, 2,	3, '2022-06-06', '2025-06-06'),
 (1, 3, 3, '2020-06-06', '2025-06-06');




SELECT * from Users;
SELECT * from Borrowed_Books;
SELECT * from Employees;
SELECT * from Books;
SELECT * from Authors;









