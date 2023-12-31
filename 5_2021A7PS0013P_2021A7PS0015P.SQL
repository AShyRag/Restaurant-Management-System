Create table customer(
	customer_id varchar(15) NOT NULL UNIQUE,
    customer_name varchar(30),
	password varchar(10) NOT NULL,
	address varchar(50) NOT NULL,   
	phone_number varchar(10) NOT NULL,
	signed_in INT DEFAULT 0,
	PRIMARY KEY(customer_id)
	
);

INSERT INTO customer (customer_id, customer_name,password,address,phone_number) VALUES ('12','Aneesh','Aneesh123', 'Aneesh Hill','42156411');
INSERT INTO customer (customer_id, customer_name,password,address,phone_number) VALUES ('13','Vidit','Vidit123','Vidit Hill', '32464224');
INSERT INTO customer (customer_id, customer_name,password,address,phone_number) VALUES ('14','Abinav', 'Abinav123','Abinav Hill', '4356532');
INSERT INTO customer (customer_id, customer_name,password,address,phone_number) VALUES ('16','Jai','Jaiy123','Jai Hill', '5434353');
INSERT INTO customer (customer_id, customer_name,password,address,phone_number) VALUES ('17','Sidd','Sidd123','Sidd Hill', '556353');
INSERT INTO customer (customer_id, customer_name,password,address,phone_number) VALUES ('18','Shyam','Shyam123','Shyam Hill', '553353');
INSERT INTO customer (customer_id, customer_name,password,address,phone_number) VALUES ('19','Nair','Nair123','Nair Hill', '564353');
INSERT INTO customer (customer_id, customer_name,password,address,phone_number) VALUES ('20','Aabir','Aabir123','Aabir Hill', '56443253');
INSERT INTO customer (customer_id, customer_name,password,address,phone_number) VALUES ('135','Pulak','Pulak123','Pulak Hill', '564387532');
INSERT INTO customer (customer_id, customer_name,password,address,phone_number) VALUES ('1545','dhruv','dhruv123','dhruv Hill', '564353');
INSERT INTO customer (customer_id, customer_name,password,address,phone_number) VALUES ('1755','Anirudh','Anirudh123','Anirudh Hill', '57654353');


create table restaurant(
	restaurant_id varchar(15) NOT NULL UNIQUE,
 restaurant_name varchar(20) NOT NULL,
	Address varchar(50) NOT NULL,
    restaurant_phone_number varchar(15) NOT NULL,
	PRIMARY KEY (restaurant_id)
);

INSERT INTO restaurant (restaurant_id,restaurant_name,Address,restaurant_phone_number) VALUES ('11','Momo Point','Momo Hill','993214');
INSERT INTO restaurant (restaurant_id,restaurant_name,Address,restaurant_phone_number) VALUES ('12','Maggi Point','Maggi Hill','99321444');
INSERT INTO restaurant (restaurant_id,restaurant_name,Address,restaurant_phone_number) VALUES ('13','Chat Point','Chat Hill','993214743');
INSERT INTO restaurant (restaurant_id,restaurant_name,Address,restaurant_phone_number) VALUES ('14','Roti Point','Roti Hill', '993742214');
INSERT INTO restaurant (restaurant_id,restaurant_name,Address,restaurant_phone_number) VALUES ('15','Dosa Point','Dosa Hill','993214421');
INSERT INTO restaurant (restaurant_id,restaurant_name,Address,restaurant_phone_number) VALUES ('16','Idly Point','Idly Hill','993214556');
INSERT INTO restaurant (restaurant_id,restaurant_name,Address,restaurant_phone_number) VALUES ('17','Pasta Point','Pasta Hill','993288714');
INSERT INTO restaurant (restaurant_id,restaurant_name,Address,restaurant_phone_number) VALUES ('18','Pizza Point','Pizza Hill','99321468');
INSERT INTO restaurant (restaurant_id,restaurant_name,Address,restaurant_phone_number) VALUES ('19','Burger Point','Burger Hill','993214543');
INSERT INTO restaurant (restaurant_id,restaurant_name,Address,restaurant_phone_number) VALUES ('132','Chicken Point','ChickenHill','99321499');
INSERT INTO restaurant (restaurant_id,restaurant_name,Address,restaurant_phone_number) VALUES ('133','Pork Point','Pork Hill','99321499');

Create table menu(
	restaurant_id varchar(15) NOT NULL,
	Item_name varchar(20) NOT NULL,
	Item_price int NOT NULL,
	foreign key (restaurant_id) references restaurant(restaurant_id),
	PRIMARY KEY(restaurant_id, item_name)

);

INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('11','Veg Momo',100);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('11', 'Chicken Momo',120);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('11','Veg Fried Momo', 150);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('11', 'Chicken Fried Momo',175);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('19', 'Veg Burger', 120);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('19', 'Chicken Burger', 150);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('19', 'Veg Fries', 75);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('12','Fried Maggi' ,50);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('12','Plain Maggi' ,30);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('12','Cheese Maggi' ,40);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('13','Bhel Puri' ,40);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('13','Sev Puri' ,40);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('13','Samosa Chat' ,30);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('14','Plain Roti' ,10);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('14','Butter Roti' ,15);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('15','Plain Dosa' ,30);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('15','Cheese Dosa' ,45);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('16','Idly' ,20);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('16','Fried Idly' ,30);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('17','White Pasta' ,100);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('17','Red Pasta' ,100);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('17','Pink Pasta' ,100);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('18','Veg Pizza' ,250);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('18','Chicken Pizza' ,300);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('132','Fried Chicken' ,150);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('132','Grilled Chicken' ,200);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('133','Pork' ,250);
INSERT INTO menu (restaurant_id,Item_name,Item_price) VALUES('133','Bacon' ,300);


create table delivery_details(
		delivery_id varchar(15) NOT NULL UNIQUE,
        delivery_status varchar(10) DEFAULT 'AVAILABLE',
        delivery_phone_number varchar(10),
        location varchar(50),
        primary key(delivery_id)
);

INSERT INTO delivery_details (delivery_id, location,delivery_phone_number) VALUES ('1','Krishna Marg','749327');
INSERT INTO delivery_details (delivery_id, location,delivery_phone_number) VALUES ('12','Kohinoor Gardens','07075943');
INSERT INTO delivery_details (delivery_id, location,delivery_phone_number) VALUES ('13','Bannerghata Roads','87596054');
INSERT INTO delivery_details (delivery_id, location,delivery_phone_number) VALUES ('16','Malabar Street','381135');
INSERT INTO delivery_details (delivery_id, location,delivery_phone_number) VALUES ('17','Hotel Street','7543256');
INSERT INTO delivery_details (delivery_id, location,delivery_phone_number) VALUES ('18','Waterparks','3687643');
INSERT INTO delivery_details (delivery_id, location,delivery_phone_number) VALUES ('19','Music central','75843');

-- This is the normalized table that is formed as a result of normalization, shows restaurant-delivery personnel relations
create table delivery_employee(
	delivery_id varchar(15) NOT NULL,
    restaurant_id varchar(15) NOT NULL,
    foreign key (restaurant_id) references restaurant(restaurant_id),
    foreign key (delivery_id) references delivery_details(delivery_id),
    primary key(delivery_id,restaurant_id)
);




Create table orders(
	restaurant_id varchar(15) NOT NULL ,
	customer_id varchar(15) NOT NULL ,
	order_id varchar(15) NOT NULL UNIQUE,
	delivery_id varchar(15) ,
	order_time DATETIME,
    item_name varchar(20),
	delivery_time DATETIME,
    order_cost int,
    order_status varchar(10),
	PRIMARY KEY (order_id),
	FOREIGN KEY (restaurant_id) REFERENCES restaurant(restaurant_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (delivery_id) REFERENCES delivery_details(delivery_id)

);

-- This is the sign up feature, takes the customer_id, customer_name, phone_number, address and password only works when given a unique customer_id


delimiter //

DELIMITER //
CREATE procedure signUp(customer_id1 varchar(15), address1 varchar(50), phone_number1 varchar(10), password1 varchar(10))
BEGIN 
	INSERT INTO customer (customer_id,address,phone_number,password) 
    VALUES (customer_id1,address1,phone_number1,password1);
    
    SELECT * from customers where customer_id =customer_id1;
END; //

DELIMITER ;


-- This is the sign in function, the bit that it returrns is of no consequence, what is more important is the change in the 
-- sign_in field in the costumer table.
delimiter //
CREATE PROCEDURE SignIn(usrname varchar(15),pissword varchar(10))
BEGIN 
	UPDATE customer
    SET signed_in = 1  
    WHERE customer_id = usrname AND password = pissword;
    
    select signed_in from customer where customer_id = usrname;
END; //

delimiter ; 

-- This is the sign out feature
delimiter //
CREATE PROCEDURE SignOut(IN usrname varchar(15))
BEGIN 
	DECLARE chec2k BIT;
	UPDATE customer
    SET signed_in = 0
    WHERE customer_id = usrname;
    select signed_in from customer where customer_id = usrname;
END; //

delimiter ; 


-- function for customer to set name

DELIMITER //
create procedure enterCustomerName(cust_id varchar(15), ph_no varchar(10), name1 varchar(20))
BEGIN
	UPDATE customer
    SET customer_name = name
    WHERE customer_id = cust_id AND phone_number = ph_no AND signed_in = 1;
    
END; //
DELIMITER ;

-- The customer, once logged in can also change details such as name and phone number, provided they have their phone number



DELIMITER //
CREATE PROCEDURE updateAddress(usrname varchar(15), ph_number varchar(10), new_address varchar(50))
BEGIN 
	UPDATE customer 
    SET address = new_address 
    WHERE customer_id = usrname AND phone_number = ph_number AND signed_in=1;
    
    SELECT address from customer where customer_id = usrname;
END; //

DELIMITER ;

-- Function used by customers to place orders, this updates the time automatically with the current time, and adds 
-- the appropriate fields, the status and other fields will later be changed by the restaurant owner



DELIMITER //
CREATE PROCEDURE placeOrder(customer_id1 varchar(15), restaurant_id1 varchar(15), item_name1 varchar(20), order_id1  varchar(15))
BEGIN 
	DECLARE idk INT;
    DECLARE temp_var int;
    DECLARE temp_var2 int;
    
    SELECT signed_in 
    into temp_var
    from customer
    where customer_id = customer_id1;
    if temp_var = 0
    then SET idk=1;
	else
		insert into 
        orders (customer_id,restaurant_id, item_name,order_time,order_id, order_status)
        VALUES (customer_id1,restaurant_id1, item_name1, current_time(), order_id1,'Pending' );
		SELECT Item_price
        into temp_var2
        from menu where restaurant_id = restaurant_id1 and item_name = item_name1;
		UPDATE orders
        SET order_cost= temp_var2
        where restaurant_id=restaurant_id1 and customer_id = customer_id1 and item_name = item_name1;
        
        SELECT * from orders where order_id = order_id1;
	END if;
END; //

DELIMITER ;

-- Restaurant starts preparing the order once they are ready
DELIMITER //
CREATE PROCEDURE prepareOrder(order_id1 varchar(15))
BEGIN

	UPDATE orders SET order_status = 'Preparing' 
    WHERE order_id = order_id1;
    
    SELECT order_status from orders where order_id = order_id1;
END; //
DELIMITER ;



-- show menu of restaurant whose id is given as an input
DELIMITER //
CREATE PROCEDURE showMenu(rest varchar(15),cust_id varchar(15))
BEGIN
		DECLARE check1 INT;
        
        SELECT count(*)
        INTO check1
        FROM customer
        WHERE customer_id = cust_id AND signed_in = 1;
        
        IF check1 = 1
        THEN
        
        SELECT * from menu
        WHERE restaurant_id = rest;
        
        END IF;
END; //

DELIMITER ;

-- Allows restaurant to modify its menu by adding new items
DELIMITER //
CREATE PROCEDURE addItemToMenu(rest varchar(15),item_name1 varchar(20),item_price int)
BEGIN
		INSERT INTO menu
        (restaurant_id,Item_name,Item_price)
        VALUES (rest,item_name1,Item_price);
        
        SELECT * from menu
        WHERE restaurant_id = rest and Item_name = item_name1;
END; //

DELIMITER ;

-- This function is used by a restaurant to allocate a delivery driver once an order has been prepared, this drivers status is then 
-- set to busy, and he will be occupied till he delivers the order.


DELIMITER //

CREATE PROCEDURE setDeliveryDriver(restaurant varchar(15), order_id1 varchar(15))
BEGIN
    DECLARE deliveryy varchar(15);
    DECLARE temp int;
    
    SELECT COUNT(*) into temp 
    FROM delivery_employee 
    NATURAL JOIN delivery_details 
    WHERE delivery_status = 'AVAILABLE' AND restaurant_id = restaurant;
    
    IF temp >0 THEN    
        SELECT delivery_id INTO deliveryy 
        FROM delivery_employee 
        NATURAL JOIN delivery_details 
        WHERE delivery_status = 'AVAILABLE' AND restaurant_id = restaurant LIMIT 1;
        
        UPDATE orders SET delivery_id = deliveryy  
        WHERE order_id = order_id1;
        
        UPDATE orders SET order_status = 'Delivering' 
        WHERE order_id = order_id1;
        
        UPDATE delivery_details SET delivery_status = 'Busy' 
        WHERE delivery_id = deliveryy;
        
        SELECT * FROM orders WHERE ORDER_ID = ORDER_ID1;
    END IF;

END; //


DELIMITER ;

-- This next function finalizes the delivery of the order, freeing the delivery driver to work on other orders.

delimiter //

CREATE PROCEDURE finalizeOrder(order_id1 varchar(15))
BEGIN 
	DECLARE chec2k BIT;
    DECLARE temp_var varchar(15);
    
    UPDATE orders 
    SET order_status = 'Delivered' 
    WHERE order_id = order_id1;
    
    
    UPDATE orders
    SET delivery_time= current_time() 
    WHERE  order_id = order_id1;
    
    
    SELECT delivery_id 
    into temp_var 
    FROM orders 
    WHERE order_id = order_id1;
    
    
    UPDATE delivery_details 
    SET delivery_status = 'AVAILABLE' 
    where delivery_id = temp_var;

	select * from orders where order_id = order_id1;
END; //


DELIMITER ;



-- Searching by item
delimiter //
CREATE PROCEDURE searchByItem(item_name1 varchar(20), customer_id1 varchar(15))
BEGIN
	DECLARE temp_var int;
    
    SELECT signed_in 
    INTO temp_var
    FROM customer
    WHERE customer_id = customer_id1;
    
    IF temp_var =1
    THEN
    
     SELECT restaurant_id 
     FROM restaurant natural join menu 
     where item_name = item_name1;
     
     END IF;
END; //
DELIMITER ;


-- Searching By price


delimiter //
CREATE PROCEDURE searchByPrice(IN max_price INT, customer_id1 varchar(15))
BEGIN
    DECLARE temp_var int;
    
    SELECT signed_in 
    INTO temp_var
    FROM customer
    WHERE customer_id = customer_id1;
    
    IF temp_var =1
    THEN
    
     SELECT restaurant_id,item_name,item_price
     from restaurant natural join menu 
     where item_price<max_price;
     
     end if;
END; //
DELIMITER ;


-- Searching by address
DELIMITER //
CREATE PROCEDURE searchByAddress(IN rest_address varchar(50), customer_id1 varchar(15))
BEGIN
        
    DECLARE temp_var int;  -- this variable is used to check if the costumer is signed in or not
    
    SELECT signed_in 
    INTO temp_var
    FROM customer
    WHERE customer_id = customer_id1;
    IF temp_var =1
    THEN
    
     SELECT DISTINCT restaurant_id 
     from restaurant natural join menu 
     where address = rest_address;
     
     END IF;
END; //
DELIMITER ;


-- list employees location
delimiter //

create procedure findEmployeeLocation(IN delivery_id1 varchar(15))
BEGIN

		select location
        from delivery_details 
        where delivery_id = delivery_id1;
        
END; //

DELIMITER ;

--  Find location and status of all employees

delimiter //

CREATE PROCEDURE findAllEmployees(In rest_id varchar(15))
BEGIN

     SELECT delivery_id, delivery_status,location 
     from delivery_details natural join delivery_employee
     where restaurant_id = rest_id;
     
END; //
DELIMITER ;


DELIMITER //

-- retrieveOrderStatus
delimiter //

CREATE PROCEDURE retrieveOrderStatus(IN cust_id varchar(50))
BEGIN

     SELECT order_id,item_name,order_time,order_status 
     from customer natural join orders 
     where customer_id = cust_id and signed_in=1 
     ORDER BY order_time DESC;
     
END; //
DELIMITER ; 

-- used by restaurants to add new employee to their roster

delimiter //

CREATE procedure allotDeliveryToRestaurant(restaurant varchar(15), delivery varchar(15))
BEGIN 

    INSERT INTO delivery_employee (delivery_id,restaurant_id) 
    VALUES (delivery,restaurant);

    
END; //

delimiter ;


-- Register Delivery Driver
delimiter //

create procedure registerDelivery(id varchar(15),location2 varchar(50), phone_number varchar(10))
BEGIN
    
	insert into delivery_details (delivery_id,location,delivery_status, delivery_phone_number) 
    VALUES (id,location2,'AVAILABLE',phone_number);
    
    select * from delivery_details where delivery_id = id;
    
END; //
delimiter ;


-- update delivery personnels location
delimiter //
create procedure updateLocation(id varchar(15),location2 varchar(50))
BEGIN
    
    UPDATE delivery_details 
    SET location = location2
    WHERE delivery_id = id;
    
    select location
    from delivery_details
    where delivery_id = id;
    
END; //
delimiter ;




-- Getting average delivery time for a restaurant in minutes
DELIMITER // 

create PROCEDURE averageDeliveryTime(IN rest_id varchar(15))
BEGIN
	SELECT AVG( timestampdiff(minute,order_time,delivery_time))
    AS averageTimeTaken
    from orders
    where restaurant_id = rest_id AND order_status = 'Delivered';
END; //

DELIMITER ;

-- Getting total revenue of a restaurant
DELIMITER // 

create PROCEDURE totalRevenue(IN rest_id varchar(15))
BEGIN
	SELECT SUM( order_cost)
    AS total_revenue
    from orders
    where restaurant_id = rest_id AND order_status = 'Delivered';
END; //

DELIMITER ;

-- Getting volume of completed orders for each restaurant
DELIMITER // 

create PROCEDURE orderVolume(IN rest_id varchar(15))
BEGIN

	SELECT COUNT(*) 
    AS order_volume
    FROM orders
    WHERE restaurant_id =rest_Id AND order_status = 'Delivered';
    
END; //

DELIMITER ;



-- Function to calculate productivity: order_volume/order_time*deliverypersonnel

DELIMITER //
create PROCEDURE productivityCheck(IN rest_id varchar(15))
BEGIN
	DECLARE avgtime INT;
    DECLARE personnel INT;
    DECLARE revenue INT;
    
	SELECT COUNT(*) 
	INTO personnel
    FROM delivery_employee
    WHERE restaurant_id =rest_Id ;
    
    SELECT AVG( timestampdiff(minute,order_time,delivery_time))
    INTO avgtime
    from orders
    where restaurant_id = rest_id AND order_status = 'Delivered';
    
	SELECT SUM(order_cost)
    INTO revenue
    from orders
    WHERE restaurant_id = rest_id AND order_status = 'Delivered';
    SELECT revenue/avgtime/personnel as Productivity;
    
END; //

DELIMITER ;

















