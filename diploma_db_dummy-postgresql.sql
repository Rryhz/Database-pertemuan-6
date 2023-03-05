CREATE TABLE student_identity (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  date_of_birth DATE NOT NULL,
  gender CHAR(1) NOT NULL,
  address TEXT NOT NULL,
  phone_number VARCHAR(20) NOT NULL
);

INSERT INTO student_identity (name, email, date_of_birth, gender, address, phone_number)
VALUES 
  ('John Doe', 'johndoe@example.com', '1999-01-01', 'M', '123 Main St, Anytown USA', '123-456-7890'),
  ('Jane Smith', 'janesmith@example.com', '2000-02-02', 'F', '456 Maple Ave, Anytown USA', '234-567-8901'),
  ('David Johnson', 'davidjohnson@example.com', '1998-03-03', 'M', '789 Oak Blvd, Anytown USA', '345-678-9012'),
  ('Emily Davis', 'emilydavis@example.com', '1999-04-04', 'F', '321 Elm St, Anytown USA', '456-789-0123'),
  ('Michael Wilson', 'michaelwilson@example.com', '2001-05-05', 'M', '654 Birch Dr, Anytown USA', '567-890-1234'),
  ('Sarah Brown', 'sarahbrown@example.com', '2002-06-06', 'F', '987 Pine Rd, Anytown USA', '678-901-2345'),
  ('Christopher Lee', 'christopherlee@example.com', '1997-07-07', 'M', '654 Oak Blvd, Anytown USA', '789-012-3456'),
  ('Avery Wilson', 'averywilson@example.com', '1998-08-08', 'F', '321 Cedar St, Anytown USA', '890-123-4567'),
  ('William Davis', 'williamdavis@example.com', '2000-09-09', 'M', '456 Maple Ave, Anytown USA', '901-234-5678'),
  ('Olivia Lee', 'olivialeee@example.com', '2001-10-10', 'F', '789 Main St, Anytown USA', '012-345-6789');

