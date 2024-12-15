CREATE DATABASE sql_practice;
USE sql_practice;

CREATE table Grade (
ID INTEGER,
Major VARCHAR(100),
GPA DECIMAL(10,1)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sql_lyst6272.csv'
INTO TABLE Grade
fields terminated by ','
LINES terminated by '\n'
ignore 1 rows;

SELECT MAJOR,GPA FROM Grade WHERE GPA>=3.5;
