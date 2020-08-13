-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.


select Category.CategoryName, Product.ProductName
from Category 
join Product on Category.Id = Product.CategoryId


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.id, shipper.CompanyName
from [order] as o
join shipper on o.ShipVia = Shipper.id
where o.OrderDate < [2012-08-09]

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select p.ProductName, OrderDetail.Quantity
from Product as p
join OrderDetail on p.Id = OrderDetail.ProductId
where OrderDetail.OrderId = 10251
Order by p.ProductName
limit 3



-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.


select o.Id as OrderID, c.CompanyName as Company_Name, e.LastName as Employee_Last_Name
from [order] as o
join Customer as c on o.CustomerId = c.Id 
join Employee as e on o.EmployeeId = e.Id
