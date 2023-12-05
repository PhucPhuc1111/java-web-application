create database Fashion_Fever
USE Fashion_Fever;


-- TABLES:
CREATE TABLE users(
	userID VARCHAR(10) NOT NULL PRIMARY KEY,
	userNAME VARCHAR(100) NOT NULL,
	userPASSWORD VARCHAR(100) NOT NULL,
	userROLE VARCHAR(10) NOT NULL
);

CREATE TABLE userDetail(
	userID VARCHAR(10) NOT NULL REFERENCES users(userID),
	fullname NVARCHAR(50),
	address VARCHAR(100),
	phone VARCHAR(12) UNIQUE,
	mail VARCHAR(100) UNIQUE
);

CREATE TABLE brands(
	brandID VARCHAR(10) NOT NULL PRIMARY KEY,
	brandNAME VARCHAR(100)
);

CREATE TABLE products(
	productID VARCHAR(10) NOT NULL PRIMARY KEY,
	productNAME VARCHAR(100),
	description VARCHAR(300),
	amount_sold INT,
	amount_available INT,
	brandID VARCHAR(10) NOT NULL REFERENCES brands(brandID),
	unitPrice MONEY,
	origin VARCHAR(100)
);

CREATE TABLE orders(
	orderID VARCHAR(10) NOT NULL PRIMARY KEY,
	userID VARCHAR(10) NOT NULL REFERENCES users(userID),
	orderDATE DATE,
	total MONEY
);

CREATE TABLE orderDetail(
	orderID VARCHAR(10) NOT NULL REFERENCES orders(orderID),
	productID VARCHAR(10) NOT NULL REFERENCES products(productID),
	quantity INT,
	price MONEY
);


--====================[ INSERT DATA ]====================--
INSERT INTO users(userID, userNAME, userPASSWORD, userROLE)
VALUES ('ad001','johnnypham','14112003','admin'),
('ad002','phuc','12345','admin'),
('ad003','thu','12345','admin'),
('ff001','maianh321@gmail.com','12345','user'),
('ff002','tuananh123@gmail.com','12345','user');

INSERT INTO userDetail(userID, fullname, address, mail, phone)
VALUES
('ff001','Tong Mai Anh','100 Luong Dinh Cua', 'maianh321@gmail.com', '0123456789'),
('ff002','Nguyen Tuan Anh','200 Luong Dinh Cua', 'tuananh123@gmail.com', '0987654321');

INSERT INTO brands(brandID,brandNAME)
VALUES
('GC', 'Gucci'),
('LV', 'Louis Vuitton'),
('ZR', 'Zara'),
('PRADA', 'Prada'),
('VERSACE', 'Versace'),
('BALENCIAGA', 'Balenciaga'),
('DIOR', 'Dior'),
('VALENTINO', 'Valentino'),
('BURBERRY', 'Burberry'),
('GIVENCHY', 'Givenchy');

INSERT INTO products(productID,productNAME, brandID, description, unitPrice, origin, amount_available, amount_sold)
VALUES
('P0001', 'Men''s Fleece Jacket', 'BALENCIAGA', 'Thick and cozy men''s fleece jacket', 59.99, 'Vietnam', 20, 50)

--====================[ QUERY ]====================--
SELECT * FROM users;
SELECT * FROM products;
SELECT * FROM userDetail;
SELECT * FROM brands;