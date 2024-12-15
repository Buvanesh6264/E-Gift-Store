--CREATING A TABLE FOR CUSTOMER
CREATE TABLE Customer (
    customer_id NUMBER,
    Name VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) ,
    password VARCHAR2(255) NOT NULL,
    phone_number VARCHAR2(15),constraint cust_custid_pk primary key(customer_id)
    );

    desc Customer;
    SELECT * FROM Customer;

--CREATING A TABLE FOR PRODUCT    
    CREATE TABLE Product (
    product_id number,
    product_name VARCHAR2(100) NOT NULL,
    price number NOT NULL,
    stock number NOT NULL,constraint Prod_id_pk primary key(product_id)
);

desc Product;
SELECT * FROM Product;

--CREATING A TABLE FOR ORDERS
CREATE TABLE Orders (
    order_id NUMBER ,
    customer_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    Quantity NUMBER,
    total_price NUMBER, 
    order_date DATE,
    constraint orer_id_pk primary key(order_id),
    constraint order_cusid_fk FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    constraint order_prodid_fk FOREIGN KEY (product_id) REFERENCES Product(product_id)
);
desc orders;
 SELECT * FROM  orders;

--CREATING A TABLE FOR SHIPPING
 CREATE TABLE Shipping (
    shipping_id NUMBER ,
    customer_id NUMBER NOT NULL,
    order_id NUMBER NOT NULL,
    shipping_address VARCHAR2(30),
    city VARCHAR2(50) NOT NULL,
    postal_code VARCHAR2(10),
    shipping_date DATE,
    delivery_date DATE,
    constraint ship_id_pk primary key(shipping_id),
    constraint ship_custid_fk FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    constraint ship_orderid_fk FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

desc shipping;
SELECT * FROM  Shipping;

--CREATING A TABLE FOR WISHLIST
CREATE TABLE Wishlist (
    wishlist_id NUMBER,
    customer_id NUMBER NOT NULL,
    added_product VARCHAR2(200) ,
    constraint wish_id_pk primary key(wishlist_id),
    constraint wish_custid_fk FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

desc wishlist;
SELECT * FROM  Wishlist  ;

--CREATING A TABLE FOR PAYMENT
CREATE TABLE Payment (
    payment_id NUMBER,
    customer_id NUMBER NOT NULL,
    order_id NUMBER NOT NULL,
    payment_method VARCHAR2(50),
    payment_status VARCHAR2(50) ,
    amount NUMBER,
    constraint pay_id_pk primary key(payment_id),
    constraint pay_custid_fk FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    constraint pay_orderid_fk FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

desc payment;
SELECT * FROM Payment;

--CREATING A TABLE FOR TRACKING
CREATE TABLE Tracking (
    tracking_id NUMBER,
    order_id NUMBER NOT NULL,
    tracking_status VARCHAR2(50),
    estimated_delivery DATE,
    constraint track_id_pk primary key(tracking_id),
    constraint track_orderid_fk FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

desc tracking;
select * from  Tracking ;

--CREATING A TABLE FOR RATING
CREATE TABLE Rating (
    rating_id NUMBER,
    customer_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    rating NUMBER CHECK (rating >= 1 AND rating <= 5),
    review VARCHAR2(500),
    constraint rating_id_pk primary key(rating_id),
    constraint rating_custid_fk FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    constraint rating_produid_fk FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

desc rating;
SELECT * FROM Rating;