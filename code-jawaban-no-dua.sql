use uas_pbd_pemancingan;

-- a. Function
DELIMITER //
CREATE FUNCTION GetTotalSales() RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(TotalAmount) INTO total FROM Sales;
    RETURN total;
END;
//
DELIMITER ;

DELIMITER //
CREATE FUNCTION GetEquipmentPrice(equip_id INT, qty INT) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE price DECIMAL(10, 2);
    SELECT Price * qty INTO price FROM Equipment WHERE EquipmentID = equip_id;
    RETURN price;
END;
//
DELIMITER ;

SHOW FUNCTION STATUS WHERE Db = 'your_database_name';

-- b. Procedure
DELIMITER //
CREATE PROCEDURE GetAllCustomers()
BEGIN
    SELECT * FROM Customers;
END;
//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetBookingDetails(cust_id INT, book_date DATE)
BEGIN
    SELECT * FROM Bookings WHERE CustomerID = cust_id AND BookingDate = book_date;
END;
//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE CheckSalary(emp_id INT)
BEGIN
    DECLARE salary DECIMAL(10, 2);
    SELECT Salary INTO salary FROM Employees WHERE EmployeeID = emp_id;
    IF salary < 3000000 THEN
        UPDATE Employees SET Salary = Salary + 500000 WHERE EmployeeID = emp_id;
    END IF;
END;
//
DELIMITER ;

SHOW PROCEDURE STATUS WHERE Db = 'your_database_name';

-- c. Trigger
CREATE TABLE Log (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    Description VARCHAR(255),
    LogDate DATETIME
);

DELIMITER //
CREATE TRIGGER BeforeCustomerInsert BEFORE INSERT ON Customers
FOR EACH ROW
BEGIN
    INSERT INTO Log (Description, LogDate) VALUES ('Customer Inserted', NOW());
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER BeforeCustomerUpdate BEFORE UPDATE ON Customers
FOR EACH ROW
BEGIN
    INSERT INTO Log (Description, LogDate) VALUES ('Customer Updated', NOW());
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER BeforeCustomerDelete BEFORE DELETE ON Customers
FOR EACH ROW
BEGIN
    INSERT INTO Log (Description, LogDate) VALUES ('Customer Deleted', NOW());
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER AfterCustomerInsert AFTER INSERT ON Customers
FOR EACH ROW
BEGIN
    INSERT INTO Log (Description, LogDate) VALUES ('Customer Inserted', NOW());
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER AfterCustomerUpdate AFTER UPDATE ON Customers
FOR EACH ROW
BEGIN
    INSERT INTO Log (Description, LogDate) VALUES ('Customer Updated', NOW());
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER AfterCustomerDelete AFTER DELETE ON Customers
FOR EACH ROW
BEGIN
    INSERT INTO Log (Description, LogDate) VALUES ('Customer Deleted', NOW());
END;
//
DELIMITER ;

SHOW TRIGGERS;

-- d. Index
CREATE TABLE NewTable (
    ID INT,
    Col1 INT,
    Col2 INT,
    PRIMARY KEY (ID, Col1)
);

CREATE INDEX idx_sales_customer_employee ON Sales(CustomerID, EmployeeID);

ALTER TABLE Equipment ADD INDEX idx_name_type (Name, Type);

SHOW INDEX FROM Sales;
SHOW INDEX FROM Equipment;

-- e. View
CREATE VIEW HorizontalView AS
SELECT Name, Phone, Email FROM Customers;

CREATE VIEW VerticalView AS
SELECT CustomerID, Name FROM Customers WHERE CustomerID < 5;

CREATE VIEW InnerView AS
SELECT CustomerID, Name FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM VerticalView) WITH CHECK OPTION;

SHOW FULL TABLES IN your_database_name WHERE TABLE_TYPE LIKE 'VIEW';

-- f. Database Security
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password1';
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'password2';
CREATE USER 'user3'@'localhost' IDENTIFIED BY 'password3';

CREATE ROLE finance;
CREATE ROLE human_dev;
CREATE ROLE warehouse;

GRANT SELECT ON your_database_name.Customers TO 'user1'@'localhost';
GRANT SELECT ON your_database_name.HorizontalView TO 'user2'@'localhost';
GRANT EXECUTE ON PROCEDURE your_database_name.GetAllCustomers TO finance;

GRANT finance TO 'user3'@'localhost';
GRANT human_dev TO 'user3'@'localhost';
GRANT warehouse TO 'user3'@'localhost';

SHOW GRANTS FOR 'user1'@'localhost';
SHOW GRANTS FOR 'user2'@'localhost';
SHOW GRANTS FOR 'user3'@'localhost';
