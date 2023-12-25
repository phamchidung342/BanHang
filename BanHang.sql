CREATE TABLE Oder(
	OderID  INT,
	CustomerID INT,
	OderDate Date,
	Primary Key (OderID, CustomerID)
)

INSERT INTO  Oder VALUES ('1', '113', '2023-12-25')
INSERT INTO  Oder VALUES ('2', '114', '2023-12-24')

DROP TABLE Oder

SELECT * FROM Oder


CREATE TABLE Customer(
	CustomerID INT,
	NameCus NVARCHAR(50),
	Address NVARCHAR(100),
	Telephone VARCHAR(12),
	FOREIGN KEY (CustomerID) REFERENCES Oder(CustomerID)
)


INSERT INTO  Customer VALUES ('210', 'HoangLong', 'HaNoi', '012345678')
INSERT INTO  Customer VALUES ('224', 'ThanhHai', 'HaNoi', '01242278')

DROP TABLE Customer

SELECT * FROM Customer


CREATE TABLE OderDetails(
	OderID  INT,
	ProductID INT,
	PriceMacDinh Money,
	Quantity INT,
	FOREIGN KEY (OderID) REFERENCES Oder(OderID),
	FOREIGN KEY (ProductID) REFERENCES Product(ProductID) 
)

INSERT INTO  OderDetails VALUES ('1', '001', '890', '1')
INSERT INTO  OderDetails VALUES ('2', '002', '891', '2')


DROP TABLE OderDetails

SELECT * FROM OderDetails


CREATE TABLE Product(
	ProductID  INT PRIMARY KEY,
	NameProduct NVARCHAR(50),
	Don_Vi NVARCHAR(10),
	Price Money,
	Quantity INT,
)

INSERT INTO  Product VALUES ('001', 'Ao polo', 'chiec', '1000', '644')
INSERT INTO  Product VALUES ('002', 'Quan Au', 'chiec', '2000', '143')

DROP TABLE Product

SELECT * FROM Product