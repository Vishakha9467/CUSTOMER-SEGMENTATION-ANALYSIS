use sql_practice;
Create table Sales_Data_Transaction (
customer_id varchar(255), trans_date varchar(255), trans_amount int);

create table Sales_Data_Response (
customer_id varchar(255), response int);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE sales_data_transaction
fields terminated by ','
LINES terminated by '\n'
ignore 1 rows;

select * from sales_data_transaction limit 10;

explain select * from sales_data_transaction where customer_id='C55295';

CREATE INDEX IDX_ID ON sales_data_transaction(customer_id);

explain select * from sales_data_transaction where customer_id='C55295';
