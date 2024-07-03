use uas_pbd_pemancingan;

INSERT INTO Customers (Name, Phone, Email, Address) VALUES
('John Doe', '081234567890', 'johndoe@example.com', 'Jl. Merdeka No. 1'),
('Jane Smith', '081298765432', 'janesmith@example.com', 'Jl. Sudirman No. 2'),
('Alice Johnson', '081376543210', 'alicejohnson@example.com', 'Jl. Thamrin No. 3'),
('Bob Brown', '081432198765', 'bobbrown@example.com', 'Jl. Gatot Subroto No. 4'),
('Charlie Davis', '081556677889', 'charliedavis@example.com', 'Jl. MT Haryono No. 5');

INSERT INTO Employees (Name, Position, HireDate, Salary) VALUES
('Michael Scott', 'Manager', '2020-01-15', 5000000.00),
('Dwight Schrute', 'Assistant Manager', '2019-03-23', 4000000.00),
('Jim Halpert', 'Sales', '2018-07-19', 3500000.00),
('Pam Beesly', 'Receptionist', '2021-05-12', 3000000.00),
('Stanley Hudson', 'Sales', '2017-11-30', 3500000.00);

INSERT INTO FishingSpots (Name, Location, PricePerHour) VALUES
('Spot A', 'Lake A', 100000.00),
('Spot B', 'Lake B', 150000.00),
('Spot C', 'River A', 120000.00),
('Spot D', 'River B', 130000.00),
('Spot E', 'Pond A', 90000.00);

INSERT INTO Equipment (Name, Type, Price, Quantity) VALUES
('Fishing Rod A', 'Rod', 50000.00, 10),
('Fishing Rod B', 'Rod', 70000.00, 8),
('Fishing Net A', 'Net', 30000.00, 15),
('Fishing Net B', 'Net', 40000.00, 12),
('Fishing Bait A', 'Bait', 10000.00, 20);

INSERT INTO Sales (CustomerID, EmployeeID, SaleDate, TotalAmount) VALUES
(1, 1, '2023-06-01', 150000.00),
(2, 2, '2023-06-02', 200000.00),
(3, 3, '2023-06-03', 250000.00),
(4, 4, '2023-06-04', 300000.00),
(5, 5, '2023-06-05', 350000.00);

INSERT INTO SaleDetails (SaleID, EquipmentID, Quantity, Price) VALUES
(1, 1, 2, 100000.00),
(2, 2, 3, 210000.00),
(3, 3, 1, 30000.00),
(4, 4, 4, 160000.00),
(5, 5, 5, 50000.00);

INSERT INTO Bookings (CustomerID, SpotID, BookingDate, StartTime, EndTime, TotalPrice) VALUES
(1, 1, '2023-07-01', '08:00:00', '10:00:00', 200000.00),
(2, 2, '2023-07-02', '09:00:00', '11:00:00', 300000.00),
(3, 3, '2023-07-03', '10:00:00', '12:00:00', 240000.00),
(4, 4, '2023-07-04', '11:00:00', '13:00:00', 260000.00),
(5, 5, '2023-07-05', '12:00:00', '14:00:00', 180000.00);

INSERT INTO Payments (SaleID, PaymentDate, Amount, PaymentMethod) VALUES
(1, '2023-06-01', 150000.00, 'Cash'),
(2, '2023-06-02', 200000.00, 'Credit Card'),
(3, '2023-06-03', 250000.00, 'Debit Card'),
(4, '2023-06-04', 300000.00, 'Cash'),
(5, '2023-06-05', 350000.00, 'Credit Card');