 /*Print Distinct City from Table Customers and Print Count Distinct City from Table Customers*/
 select distinct(City) ,count(distinct City) from customers group by City;
 
 /*Write a SQL query to get the least number of quantities and the highest number of quantities bought by the user consider 
 the OrderDetails Table*/
 select max(Quantity),min(Quantity) from order_details;
 
 /*Print the total and an average number of quantities ordered by users, consider the OrderDetails Table*/
 select sum(Quantity) ,avg(Quantity) from order_details;
 
 /*Print name of the product which is present at the 5th position till the 15th position from Products table, use LIMIT keyword*/
 
 select ProductName from Products order by ProductName Limit 5,15;
 select SUBSTRING(ProductName, 5, 15) AS ExtractString FROM Products LIMIT 10;
 
 
 /*Write a SQL query for all the details of the supplier whose name consists of “A” at the second position from the Suppliers table*/
 select  * from suppliers where SupplierName LIKE '_A%';
 
 /*Print the details of the customer who doesn’t stay in the USA and Canada from the Customers table*/
 select  * from customers where !(Country = 'USA'  or Country = 'Canada'); 
 select  * from customers where  (Country <> 'USA'  and Country <> 'Canada'); 
 
 /*Print the details of all the orders which were placed between the year 2020 to 2021 also print the same in descending order
from the OrderDetails table*/
 select * from orders ,order_details B  inner join orders A on A.OrderID = b.OrderID 
 where A.OrderDate between  '2020-01-01' and '2021-12-31' order by A.OrderDate DESC ;
 
 /*test*/
 select * from orders ;

/*Write a query to show the distinct city and their count from the Customers table */
 select distinct(City) ,count(City) from customers group by City;
 
 /*Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the Employees table.*/
 select * from employees  where FirstName <> 'Sanjay' and (FirstName <> 'Soniya' and FirstName <> 'Sonia');
 
 /*Duplicate a table as similar to the Suppliers table and name it as SupplierDetail.*/
 create table SupplierDetail like suppliers;
 
 /*Delete customer details whose country is Venezuela and print the rest of the Customer table */
 set SQL_SAFE_UPDATES = 0;
 delete from Customers where Country = 'Venezuela';
 select * from Customers;
 