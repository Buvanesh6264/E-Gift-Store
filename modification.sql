-- Modification

-- query the information of SmartPhone and Luxury Watch

Select * from product
where  product_name in('Smartphone','Luxury Watch');

-- query the information of products price less than 1000

Select * from product
where  price<=1000;

-- query the shipping_address,shipping_date and delivery_dateof the Shipping in the same city ---- 
 
SELECT shipping_address, shipping_date, delivery_date
FROM Shipping 
WHERE city = 'Karur';


-- query the tracking_id and tracking_status  of orders delivered on 2023-09-30
SELECT tracking_id, tracking_status
FROM Tracking
WHERE estimated_delivery = '30-SEP-23';

-- Find Customers whose names start with R

SELECT * 
FROM Customer
WHERE Name LIKE 'R%';

-- Find Customers whose names start with R and ends with h

SELECT * 
FROM Customer
WHERE Name LIKE 'R%h';

-- Find Customers with exactly 6-character names

SELECT * 
FROM Customer
WHERE Name LIKE '______';

/*======================== Retrieve Orders with Customer Details ======================*/

SELECT 
    Orders.order_id, 
    Customer.Name, 
    Customer.Email, 
    Product.product_name, 
    Orders.Quantity, 
    Orders.total_price, 
    Orders.order_date
FROM 
    Orders
JOIN 
    Customer ON Orders.customer_id = Customer.customer_id
JOIN 
    Product ON Orders.product_id = Product.product_id;
    
    

/*======================== Retrieve Shipping Information for Orders ======================*/
SELECT 
    Shipping.shipping_id, 
    Customer.Name, 
    Orders.order_id, 
    Shipping.shipping_address, 
    Shipping.city, 
    Shipping.shipping_date, 
    Shipping.delivery_date
FROM 
    Shipping
JOIN 
    Orders ON Shipping.order_id = Orders.order_id
JOIN 
    Customer ON Shipping.customer_id = Customer.customer_id;
    
    
    /*======================== Retrieve Payments with Customer and Order Details ======================*/
    SELECT 
    Payment.payment_id, 
    Customer.Name, 
    Orders.order_id, 
    Payment.payment_method, 
    Payment.payment_status, 
    Payment.amount
FROM 
    Payment
JOIN 
    Customer ON Payment.customer_id = Customer.customer_id
JOIN 
    Orders ON Payment.order_id = Orders.order_id;

    /*======================== Retrieve Tracking Information for Orders ======================*/
SELECT 
    Tracking.tracking_id, 
    Orders.order_id, 
    Tracking.tracking_status, 
    Tracking.estimated_delivery, 
    Customer.Name
FROM 
    Tracking
JOIN 
    Orders ON Tracking.order_id = Orders.order_id
JOIN 
    Customer ON Orders.customer_id = Customer.customer_id;
    
    
    -- ------------------------------------------- --
-- Views 
-- check the customer phone number in customer_id = 5

create view updateview as
select phone_number from customer
where customer_id = 5;


select * from updateview;

-- Retrieve Customer Wishlist with Product Names

CREATE VIEW retrive as
SELECT 
        Wishlist.wishlist_id, 
        Customer.Name, 
        Wishlist.added_product
    FROM 
        Wishlist
    JOIN 
        Customer ON Wishlist.customer_id = Customer.customer_id;
        
select * from retrive;