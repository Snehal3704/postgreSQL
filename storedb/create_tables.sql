CREATE TABLE customers(
	cust_id SERIAL PRIMARY KEY,
	cust_name VARCHAR(100) NOT NULL
);

CREATE TABLE orders(
	ord_id SERIAL PRIMARY KEY,
	ord_date DATE NOT NULL,
	price NUMERIC NOT NULL,
	cust_id	INTEGER NOT NULL,--THIS IS A COLUMN THAT WE HAVE TO LINK WITH THE CUSTID COLUMN OF CUSTOMERS TABLE
	FOREIGN KEY (cust_id)	references	--references cust_id( of orders) to cust_id(customers)
	customers(cust_id)
);
