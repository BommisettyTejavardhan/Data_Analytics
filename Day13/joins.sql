create database joins_sql;
use joins_sql;

create table customer
(
customername varchar(20),
customerid varchar(20),
address varchar(20),
city varchar(20),
postalcode varchar(20),
country varchar(20),
primary key (customerid)
);

create table order_info
(
orderid int,
customerid varchar(20),
employeeid int,
orderdate datetime,
shipperid int,
primary key (orderid)
);

INSERT INTO customer VALUES('Rahul Sharma','C001','MG Road','Bangalore','560001','India');
INSERT INTO customer VALUES('Priya Reddy','C002','Park Street','Hyderabad','500001','India');
INSERT INTO customer VALUES('Amit Kumar','C003','Anna Nagar','Chennai','600001','India');
INSERT INTO customer VALUES('Sneha Patel','C004','Ring Road','Ahmedabad','380001','India');
INSERT INTO customer VALUES('Vikram Singh','C005','Civil Lines','Delhi','110001','India');
INSERT INTO customer VALUES('Anjali Verma','C006','FC Road','Pune','411001','India');
INSERT INTO customer VALUES('Rohan Das','C007','Salt Lake','Kolkata','700001','India');
INSERT INTO customer VALUES('Meera Joshi','C008','Hazratganj','Lucknow','226001','India');
INSERT INTO customer VALUES('Arjun Nair','C009','MG Road','Kochi','682001','India');
INSERT INTO customer VALUES('Kavya Rao','C010','Banjara Hills','Hyderabad','500034','India');

INSERT INTO order_info VALUES(101,'C001',1001,'2026-06-01 10:15:00',201);
INSERT INTO order_info VALUES(102,'C002',1002,'2026-06-02 11:30:00',202);
INSERT INTO order_info VALUES(103,'C003',1003,'2026-06-03 09:45:00',203);
INSERT INTO order_info VALUES(104,'C004',1001,'2026-06-04 14:20:00',204);
INSERT INTO order_info VALUES(105,'C005',1004,'2026-06-05 16:10:00',201);
INSERT INTO order_info VALUES(106,'C006',1002,'2026-06-06 13:00:00',205);
INSERT INTO order_info VALUES(107,'C007',1005,'2026-06-07 15:35:00',202);
INSERT INTO order_info VALUES(108,'C008',1003,'2026-06-08 12:25:00',203);
INSERT INTO order_info VALUES(109,'C009',1001,'2026-06-09 17:40:00',204);
INSERT INTO order_info VALUES(110,'C010',1004,'2026-06-10 10:50:00',205);

select *from customer;

select *from order_info;

select *from customer c right join order_info o on c.customerid = o.customerid;

select c.customerid,c.customername,c.country,o.orderid,o.orderdate from customer c right join order_info o on c.customerid = o.customerid;

set SQL_SAFE_UPDATES=0;

select *from customer c right join order_info o on c.customerid = o.customerid;

select c.customerid,c.customername,c.country,o.orderid,o.orderdate from customer c right join order_info o on c.customerid = o.customerid;

select *from customer c left join order_info o on c.customerid = o.customerid
union
select *from customer c right join order_info o on c.customerid = o.customerid;

select c.customerid,c.customername,c.country,o.orderid,o.orderdate from customer c left join order_info o on c.customerid = o.customerid
union
select c.customerid,c.customername,c.country,o.orderid,o.orderdate from customer c right join order_info o on c.customerid = o.customerid;











