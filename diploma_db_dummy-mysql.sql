CREATE TABLE student_identity (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

INSERT INTO student_identity (first_name, last_name, date_of_birth, email, phone_number, address)
VALUES 
    ('John', 'Doe', '1999-01-01', 'johndoe@example.com', '555-555-5555', '123 Main St'),
    ('Jane', 'Doe', '2001-02-15', 'janedoe@example.com', '555-555-5555', '456 Elm St'),
    ('Bob', 'Smith', '1998-03-20', 'bobsmith@example.com', '555-555-5555', '789 Oak St'),
    ('Alice', 'Johnson', '2000-04-25', 'alicejohnson@example.com', '555-555-5555', '1011 Maple St'),
    ('David', 'Brown', '1999-05-30', 'davidbrown@example.com', '555-555-5555', '1213 Pine St'),
    ('Amy', 'Taylor', '2002-06-10', 'amytaylor@example.com', '555-555-5555', '1415 Cedar St'),
    ('Frank', 'Lee', '2001-07-15', 'franklee@example.com', '555-555-5555', '1617 Birch St'),
    ('Cathy', 'Miller', '1998-08-20', 'cathymiller@example.com', '555-555-5555', '1819 Walnut St'),
    ('Sam', 'Wilson', '2000-09-25', 'samwilson@example.com', '555-555-5555', '2021 Oakwood Ave'),
    ('Karen', 'Wright', '1999-10-30', 'karenwright@example.com', '555-555-5555', '2223 Elmwood Ave');

