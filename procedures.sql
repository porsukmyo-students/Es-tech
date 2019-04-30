DELIMITER $$

CREATE OR REPLACE PROCEDURE GetCustomerById(IN id  INT UNSIGNED)
BEGIN
SELECT Password,Name,SurName,Mail,PhoneNumber FROM Customer WHERE CustomerId=id;
END$$

CREATE OR REPLACE PROCEDURE GetCustomerByMail(IN mail  VARCHAR(50))
BEGIN
SELECT CustomerId,Password,Name,SurName,PhoneNumber FROM Customer WHERE Mail=mail;
END $$

CREATE OR REPLACE PROCEDURE AddCustomer(IN name VARCHAR(15),IN surname VARCHAR(20),IN password VARCHAR(15),mail VARCHAR(50),phone VARCHAR(14))
BEGIN
INSERT INTO Customer(NAME,SurName,Password,Mail,PhoneNumber) VALUES(name,surname,password,mail,phone);
END$$

CREATE OR REPLACE PROCEDURE UpdateCustomer(IN id INT UNSIGNED,IN name VARCHAR(15),IN surname VARCHAR(20),IN password VARCHAR(15),mail VARCHAR(50),phone VARCHAR(14))
BEGIN
UPDATE Customer SET NAME=name,SurName=surname,Password=password,Mail=mail,PhoneNumber=phone WHERE CustomerId=id;
END$$

CREATE OR REPLACE PROCEDURE AddAddress(IN customer_id INT UNSIGNED, IN name VARCHAR(15),IN address VARCHAR(50))
BEGIN
INSERT INTO Address(CustomerId,Name,Address) VALUES(customer_id,name,address);
END$$

CREATE OR REPLACE PROCEDURE GetAddresses(IN customer_id INT UNSIGNED)
BEGIN
SELECT Id,NAME,Address,IsDefalut FROM Address WHERE CustomerId=customer_id;
END$$
 

CREATE OR REPLACE PROCEDURE UpdateAddress(IN id INT UNSIGNED,IN name VARCHAR(15),IN address VARCHAR(50),IN is_default BIT)
BEGIN
UPDATE Customer SET Name=name,Address=address,IsDefault=is_default WHERE Id=id;
END$$

CREATE OR REPLACE PROCEDURE RemoveAddress(In id INT UNSIGNED)
BEGIN
DELETE FROM Address WHERE Id=id;
END$$

CREATE OR REPLACE PROCEDURE AddMessage(IN customer_id INT UNSIGNED,subject VARCHAR(25),context VARCHAR(145),ip VARCHAR(15))
BEGIN
INSERT INTO Message (CustomerId,Subject,Context,ClientIp) VALUES(customer_id,subject,context,ip);
END$$

CREATE OR REPLACE PROCEDURE GetMessages(IN customer_id INT UNSIGNED)
BEGIN
SELECT MessageId,Subject,Context,DateTime FROM Message WHERE CustomerId=customer_id LIMIT 50;
END $$


CREATE OR REPLACE PROCEDURE GetProducts(IN category_id INT UNSIGNED)
BEGIN
SELECT ProductNumber,Brand,Title,Picture,Quantity,Price FROM Product WHERE CategoryId=category_id LIMIT 50;
END$$

CREATE OR REPLACE PROCEDURE GetCategories()
BEGIN
SELECT * FROM Category;
END$$

CREATE OR REPLACE PROCEDURE AddOrder(IN customer_id INT UNSIGNED,IN produt_number INT UNSIGNED,IN quantity SMALLINT UNSIGNED,IN client_ip VARCHAR(15),IN address_id INT UNSIGNED)
BEGIN
DECLARE id INT UNSIGNED;
INSERT INTO Orders(CustomerId,ProductNumber,Quantity,ClientIp,AddressId) VALUES(customer_id,produt_number,quantity,client_ip,address_id);
END $$

CREATE OR REPLACE PROCEDURE GetOrderes(IN customer_id INT UNSIGNED )
BEGIN 
SELECT * FROM Orders WHERE CustomerId=customer_id;
END $$

CREATE OR REPLACE PROCEDURE UpdateOrder(IN order_number INT UNSIGNED,IN status VARCHAR(25),IN Quantity SMALLINT UNSIGNED )
BEGIN 
UPDATE Orders Set Status=status , Quantity = quantity WHERE OrderNumber=order_number;
END $$

CREATE OR REPLACE PROCEDURE AddException(IN header VARCHAR(30),IN stack_trace VARCHAR(250),IN client_ip VARCHAR(15))
BEGIN
INSERT INTO Exception (Header,StackTrace,ClientIp) VALUES(header,stack_trace,client_ip);
END $$




DELIMITER ;