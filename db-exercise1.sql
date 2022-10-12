/*Creating a database */
create database hotelmanagementsystem;

/*creating a table*/
create table Customers
(Cust_ID int NOT NULL PRIMARY KEY, CUST_Nanme varchar(25), Cust_City varchar(20), 
 Cust_RoomNo int, CheckIn_Time datetime);

/* inserting values in table */
insert into Customers (Cust_ID ,CUST_Nanme , Cust_City, Cust_RoomNo , CheckIn_Time )
values (1111, 'Eleven', 'Copenhagen', 101, '2022-10-10 10:34:53.44'),
       (1112, 'Mike', 'NewJersey', 102, '2022-10-10 10:34:53.44'),
	   (1113, 'Lucas' , 'Paris', 103, '2022-10-10 10:34:53.44'),
       (1114, 'Will', 'Berlin', 104, '2022-10-10 10:34:53.44'),
       (1115, 'Dustin', 'Misticfalls', 105, '2022-10-10 10:34:53.44');
select * from Customers;



