DELIMITER $$

CREATE PROCEDURE GetCustomer(IN id  INT UNSIGNED)
BEGIN
SELECT Password,Name,SurName,Mail,PhoneNumber FROM Customer WHERE CustomerId=id;
END$$

CREATE PROCEDURE AddCustomer(IN name VARCHAR(15),IN surname VARCHAR(20),IN password VARCHAR(15),mail VARCHAR(50),phone VARCHAR(14))
BEGIN
INSERT INTO Customer(NAME,SurName,Password,Mail,PhoneNumber) VALUES(name,surname,password,mail,phone);
END$$

CREATE PROCEDURE UpdateCustomer(IN id INT UNSIGNED,IN name VARCHAR(15),IN surname VARCHAR(20),IN password VARCHAR(15),mail VARCHAR(50),phone VARCHAR(14))
BEGIN
UPDATE Customer SET NAME=name,SurName=surname,Password=password,Mail=mail,PhoneNumber=phone WHERE CustomerId=id;
END$$

CREATE PROCEDURE AddAddress(IN customer_id INT UNSIGNED, IN name VARCHAR(15),IN address VARCHAR(50))
BEGIN
INSERT INTO Address(CustomerId,Name,Address) VALUES(customer_id,name,address);
END$$

CREATE PROCEDURE GetAddresses(IN customer_id INT UNSIGNED)
BEGIN
SELECT Id,NAME,Address,IsDefalut FROM Address WHERE CustomerId=customer_id;
END$$
 

CREATE PROCEDURE UpdateAddress(IN id INT UNSIGNED,IN name VARCHAR(15),IN address VARCHAR(50),IN is_default BIT)
BEGIN
UPDATE Customer SET Name=name,Address=address,IsDefault=is_default WHERE Id=id;
END$$

CREATE PROCEDURE RemoveAddress(In id INT UNSIGNED)
BEGIN
DELETE FROM Address WHERE Id=id;
END$$

CREATE PROCEDURE AddMessage(IN customer_id INT UNSIGNED,subject VARCHAR(25),context VARCHAR(145),ip VARCHAR(15))
BEGIN
INSERT INTO Message (CustomerId,Subject,Context,ClientIp) VALUES(customer_id,subject,context,ip);
END$$

CREATE PROCEDURE GetMessages(IN customer_id INT UNSIGNED)
BEGIN
SELECT Subject,Context,DataTime FROM Message WHERE CustomerId=customer_id LIMIT 50;
END$$

CREATE PROCEDURE GetProducts(IN category_id INT UNSIGNED)
BEGIN
SELECT ProductNumber,Brand,Title,Picture,Quantity,Price FROM Product WHERE CategoryId=category_id LIMIT 50;
END$$

CREATE PROCEDURE GetCategories()
BEGIN
SELECT * FROM Category;
END$$

CREATE PROCEDURE AddOrder(IN customer_id INT UNSIGNED,IN produt_number INT UNSIGNED,IN quantity SMALLINT UNSIGNED,IN client_ip VARCHAR(15),IN address_id INT UNSIGNED)
BEGIN
DECLARE id INT UNSIGNED;
INSERT INTO Orders(CustomerId,ProductNumber,Quantity,ClientIp,AddressId) VALUES(customer_id,produt_number,quantity,client_ip,address_id);
END $$

CREATE PROCEDURE GetOrderes(IN order_number INT UNSIGNED )
BEGIN 
SELECT * FROM Orders WHERE OrderNumber=order_number;
END $$

CREATE PROCEDURE UpdateOrder(IN order_number INT UNSIGNED,IN status VARCHAR(25),IN Quantity SMALLINT UNSIGNED )
BEGIN 
UPDATE Orders Set Status=status , Quantity = quantity WHERE OrderNumber=order_number;
END $$

CREATE PROCEDURE AddException(IN header VARCHAR(30),IN stack_trace VARCHAR(250),IN client_ip VARCHAR(15))
BEGIN
INSERT INTO Exception (Header,StackTrace,ClientIp) VALUES(header,stack_trace,client_ip);
END $$

DELIMITER;