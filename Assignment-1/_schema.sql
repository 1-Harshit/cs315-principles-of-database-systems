CREATE TABLE movies (
  title VARCHAR(50),
  length INT,
  genre VARCHAR(30)
);

CREATE TABLE starsin(
  starname VARCHAR(100), 
  title VARCHAR(50)
);

CREATE TABLE stardetails(
  starname VARCHAR(100),
  DOB DATE,
  gender CHAR(1)
);
