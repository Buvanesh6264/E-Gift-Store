--INSERTING DATA INTO CUSTOMER TABLE

INSERT INTO Customer (customer_id, Name, Email, password, phone_number)
VALUES
 (1, 'Buvanesh', 'buvanesh@gmail.com', 'zoro123','6888222110');
 
INSERT INTO Customer (customer_id, Name, Email, password, phone_number)
VALUES
(2, 'Razith', 'ra@gmail.com', 'password456', '8876543218');

INSERT INTO Customer (customer_id, Name, Email, password, phone_number)
VALUES
(3, 'Ragul', 'ragul@gmail.com', 'ragul1234', '8978923456');

INSERT INTO Customer (customer_id, Name, Email, password, phone_number)
VALUES
(4, 'sharma', 'sh@gmail.com', 'sharma3454', '9023456789');

INSERT INTO Customer (customer_id, Name, Email, password, phone_number)
VALUES
(5, 'Karthikeyan', 'karthi@gmail.com', 'password123', '8789098767');

INSERT INTO Customer (customer_id, Name, Email, password, phone_number)
VALUES
(6, 'boobesh', 'bo@gmail.com', 'bash123', '8899887766');

select * from customer;

/**********************************************************************************/

--INSERTING DATA INTO PRODUCT TABLE

INSERT INTO Product (product_id, product_name, price, stock) VALUES
(101, 'Hallmark Small Gift Box', 350, 100);

INSERT INTO Product (product_id, product_name, price, stock) VALUES
(115, 'Baby doll', 800, 200);

INSERT INTO Product (product_id, product_name, price, stock) VALUES
(202, 'remote car', 960, 150);

INSERT INTO Product (product_id, product_name, price, stock) VALUES
(223, 'Flower Bouquet',530, 250);

INSERT INTO Product (product_id, product_name, price, stock) VALUES
(333, 'Luxury Watch', 2500, 50);

INSERT INTO Product (product_id, product_name, price, stock) VALUES
(623, 'Smartphone', 10800, 25);

SELECT * FROM product;

/**********************************************************************************/

--INSERTING DATA INTO ORDERS TABLE

INSERT INTO Orders (order_id, customer_id, product_id, Quantity,total_price,order_date)
VALUES
(1234,1,101,2,700,'13-Sep-2024');

INSERT INTO Orders (order_id, customer_id, product_id, Quantity,total_price,order_date)
VALUES
(1334,1,115,1,800,'13-Sep-2024');

INSERT INTO Orders (order_id, customer_id, product_id, Quantity,total_price,order_date)
VALUES
(1145,2,202,3,2880,'23-Jun-2024');

INSERT INTO Orders (order_id, customer_id, product_id, Quantity,total_price,order_date)
VALUES
(1554,3,223,4,2120,'24-Jan-2023');

INSERT INTO Orders (order_id, customer_id, product_id, Quantity,total_price,order_date)
VALUES
(1678,4,333,1,2500,'13-Feb-2022');

INSERT INTO Orders (order_id, customer_id, product_id, Quantity,total_price,order_date)
VALUES
(1900,5,623,1,10800,'24-Sep-2024');

INSERT INTO Orders (order_id, customer_id, product_id, Quantity,total_price,order_date)
VALUES
(1903,5,333,1,2500,'24-Sep-2023');

INSERT INTO Orders (order_id, customer_id, product_id, Quantity,total_price,order_date)
VALUES
(1913,6,115,1,800,'24-Jan-2020');

SELECT * FROM orders;

/**********************************************************************************/

--INSERTING DATA INTO WISHLIST TABLE

INSERT INTO Wishlist ( wishlist_id ,customer_id,added_product ) 
VALUES
(9001,1,'Hallmark Small Gift Box,Baby doll');

INSERT INTO Wishlist ( wishlist_id ,customer_id,added_product ) 
VALUES
(9220,2,'remote car');

INSERT INTO Wishlist ( wishlist_id ,customer_id,added_product ) 
VALUES
(9223,3,'Flower Bouquet');

INSERT INTO Wishlist ( wishlist_id ,customer_id,added_product ) 
VALUES
(9444,4, 'Luxury Watch');

INSERT INTO Wishlist ( wishlist_id ,customer_id,added_product ) 
VALUES
(9876,5,'Smartphone,Luxury Watch');

INSERT INTO Wishlist ( wishlist_id ,customer_id,added_product ) 
VALUES
(7788,6,'Baby doll');

SELECT * FROM wishlist;

/**********************************************************************************/

--INSERTING DATA INTO PAYMENT TABLE

INSERT INTO Payment ( payment_id,customer_id , order_id, payment_method,payment_status,amount)
values
(99551,1,1234,'UPITransaction','Success',700);

INSERT INTO Payment ( payment_id,customer_id , order_id, payment_method,payment_status,amount)
values
(99121,1,1334,'UPITransaction','Success',800);

INSERT INTO Payment ( payment_id,customer_id , order_id, payment_method,payment_status,amount)
values
(45811,2,1145,'CASH ON DELIVERY','Pending',2880);

INSERT INTO Payment ( payment_id,customer_id , order_id, payment_method,payment_status,amount)
values
(66991,3,1554,'UPITransaction','Success',2120);

INSERT INTO Payment ( payment_id,customer_id , order_id, payment_method,payment_status,amount)
values
(89822,4,1678,'DEBITCARD','Success',2120);

INSERT INTO Payment ( payment_id,customer_id , order_id, payment_method,payment_status,amount)
values
(68555,5,1900,'CASH ON DELIVERY','Pending',10800);

INSERT INTO Payment ( payment_id,customer_id , order_id, payment_method,payment_status,amount)
values
(87998,5,1903,'UPITransaction','Success',2500);

INSERT INTO Payment ( payment_id,customer_id , order_id, payment_method,payment_status,amount)
values
(66778,6,1913,'CREDITCARD','Success',800);

SELECT * FROM payment;

/**********************************************************************************/

--INSERTING DATA INTO RATING TABLE

INSERT INTO Rating (rating_id, customer_id, product_id, rating, review)
VALUES
(908760,1,101,5,'Excellent product! Highly recommend');

INSERT INTO Rating (rating_id, customer_id, product_id, rating, review)
VALUES
(906780,1,115,4,'Excellent product! Highly recommend');

INSERT INTO Rating (rating_id, customer_id, product_id, rating, review)
VALUES
(912360,2,202,2,'Not satisfied with the quality');

INSERT INTO Rating (rating_id, customer_id, product_id, rating, review)
VALUES
(967560,3,223,4,'Good value for money');

INSERT INTO Rating (rating_id, customer_id, product_id, rating, review)
VALUES
(923460,4,333,1,'Terrible product, do not buy');

INSERT INTO Rating (rating_id, customer_id, product_id, rating, review)
VALUES
(889777,5,623,3,'Good value for money');

INSERT INTO Rating (rating_id, customer_id, product_id, rating, review)
VALUES
(566667,5,333,3,'good');

INSERT INTO Rating (rating_id, customer_id, product_id, rating, review)
VALUES
(676656,6,115,5,'Good value for money');

select * from rating;

/**********************************************************************************/

--INSERTING DATA INTO SHIPPING TABLE

INSERT INTO Shipping(shipping_id, customer_id, order_id, shipping_address, city, postal_code, shipping_date, delivery_date)
VALUES
    (76777, 1, 1234, 'Balamurugannagar', 'Madhurai', 639113, TO_DATE('2024-09-14', 'YYYY-MM-DD'), TO_DATE('2024-09-20', 'YYYY-MM-DD'));
    
INSERT INTO Shipping(shipping_id, customer_id, order_id, shipping_address, city, postal_code, shipping_date, delivery_date)
VALUES
    (76788, 1, 1334, 'Balamurugan nagar', 'Madhurai', 639113, TO_DATE('2024-09-14', 'YYYY-MM-DD'), TO_DATE('2024-09-21', 'YYYY-MM-DD'));
    
INSERT INTO Shipping(shipping_id, customer_id, order_id, shipping_address, city, postal_code, shipping_date, delivery_date)
VALUES
    (78900, 2, 1145, 'Gandhipuram', 'Karur', 639005, TO_DATE('2024-06-23', 'YYYY-MM-DD'), TO_DATE('2024-06-29', 'YYYY-MM-DD'));
    
INSERT INTO Shipping(shipping_id, customer_id, order_id, shipping_address, city, postal_code, shipping_date, delivery_date)
VALUES
    (77888, 3, 1554, 'Gandhinagar', 'Velachery', 600042, TO_DATE('2023-01-24', 'YYYY-MM-DD'), TO_DATE('2023-01-30', 'YYYY-MM-DD'));
    
INSERT INTO Shipping(shipping_id, customer_id, order_id, shipping_address, city, postal_code, shipping_date, delivery_date)
VALUES
    (77901, 4, 1678, 'Anna Nagar', 'Erode', 639003, TO_DATE('2022-02-13', 'YYYY-MM-DD'), TO_DATE('2022-02-19', 'YYYY-MM-DD'));
    
INSERT INTO Shipping(shipping_id, customer_id, order_id, shipping_address, city, postal_code, shipping_date, delivery_date)
VALUES
    (77876, 5, 1900, 'Balamurugannagar', 'Karur', 639005, TO_DATE('2024-09-25', 'YYYY-MM-DD'), TO_DATE('2024-09-30', 'YYYY-MM-DD'));
    
INSERT INTO Shipping(shipping_id, customer_id, order_id, shipping_address, city, postal_code, shipping_date, delivery_date)
VALUES
    (69876, 5, 1903, 'Balamurugannagar', 'Karur', 639005, TO_DATE('2023-09-24', 'YYYY-MM-DD'), TO_DATE('2023-09-30', 'YYYY-MM-DD'));
    
INSERT INTO Shipping(shipping_id, customer_id, order_id, shipping_address, city, postal_code, shipping_date, delivery_date)
VALUES
    (56778, 6, 1913, 'Balamurugan nagar', 'Erode', 639003, TO_DATE('2020-01-24', 'YYYY-MM-DD'), TO_DATE('2020-01-27', 'YYYY-MM-DD'));
    
    SELECT * FROM shipping;

/**********************************************************************************/

--INSERTING DATA INTO TRACKING TABLE

INSERT INTO Tracking(tracking_id, order_id, tracking_status, estimated_delivery)
VALUES
    (111, 1234, 'DELIVERED', TO_DATE('2024-09-20', 'YYYY-MM-DD'));
    
INSERT INTO Tracking(tracking_id, order_id, tracking_status, estimated_delivery)
VALUES
    (444, 1334, 'DELIVERED', TO_DATE('2024-09-21', 'YYYY-MM-DD'));
    
INSERT INTO Tracking(tracking_id, order_id, tracking_status, estimated_delivery)
VALUES
    (333, 1145, 'INTRANSIT', TO_DATE('2024-06-29', 'YYYY-MM-DD'));
    
INSERT INTO Tracking(tracking_id, order_id, tracking_status, estimated_delivery)
VALUES
    (222, 1554, 'OUTOF DELIVERY', TO_DATE('2023-01-30', 'YYYY-MM-DD'));
    
INSERT INTO Tracking(tracking_id, order_id, tracking_status, estimated_delivery)
VALUES
    (555, 1678, 'DELIVERED', TO_DATE('2022-09-19', 'YYYY-MM-DD'));

INSERT INTO Tracking(tracking_id, order_id, tracking_status, estimated_delivery)
VALUES
    (666, 1900, 'INTRANSIT', TO_DATE('2024-09-30', 'YYYY-MM-DD'));

INSERT INTO Tracking(tracking_id, order_id, tracking_status, estimated_delivery)
VALUES
    (777, 1903, 'DELIVERED', TO_DATE('2023-09-30', 'YYYY-MM-DD'));

INSERT INTO Tracking(tracking_id, order_id, tracking_status, estimated_delivery)
VALUES
    (888, 1913, 'DELIVERED', TO_DATE('2020-01-27', 'YYYY-MM-DD'));

SELECT * from tracking;

/**********************************************************************************/