# Fishing Pond Management System Database

This repository contains the SQL scripts and explanations for creating and managing a Fishing Pond Management System database. The database includes tables for customers, employees, fishing spots, equipment, sales, sale details, bookings, and payments.

## Database Structure

### Tables

1. **Customers**
   - Stores information about the customers.
   - Columns: `CustomerID`, `Name`, `Phone`, `Email`, `Address`

2. **Employees**
   - Stores information about the employees.
   - Columns: `EmployeeID`, `Name`, `Position`, `HireDate`, `Salary`

3. **FishingSpots**
   - Stores information about the fishing spots.
   - Columns: `SpotID`, `Name`, `Location`, `PricePerHour`

4. **Equipment**
   - Stores information about the fishing equipment available for rent.
   - Columns: `EquipmentID`, `Name`, `Type`, `Price`, `Quantity`

5. **Sales**
   - Stores information about the sales transactions.
   - Columns: `SaleID`, `CustomerID`, `EmployeeID`, `SaleDate`, `TotalAmount`

6. **SaleDetails**
   - Stores detailed information about each sale.
   - Columns: `SaleDetailID`, `SaleID`, `EquipmentID`, `Quantity`, `Price`

7. **Bookings**
   - Stores information about the fishing spot bookings.
   - Columns: `BookingID`, `CustomerID`, `SpotID`, `BookingDate`, `StartTime`, `EndTime`, `TotalPrice`

8. **Payments**
   - Stores information about the payments made for sales.
   - Columns: `PaymentID`, `SaleID`, `PaymentDate`, `Amount`, `PaymentMethod`

### Functions

- **GetTotalSales**
  - Returns the total amount of all sales.

- **GetEquipmentPrice**
  - Returns the price for a given equipment and quantity.

### Procedures

- **GetAllCustomers**
  - Retrieves all customers.

- **GetBookingDetails**
  - Retrieves booking details for a specific customer on a specific date.

- **CheckSalary**
  - Checks and updates the salary of an employee if it is below a certain amount.

### Triggers

- **BeforeCustomerInsert**
  - Logs an action before a customer is inserted.

- **BeforeCustomerUpdate**
  - Logs an action before a customer is updated.

- **BeforeCustomerDelete**
  - Logs an action before a customer is deleted.

- **AfterCustomerInsert**
  - Logs an action after a customer is inserted.

- **AfterCustomerUpdate**
  - Logs an action after a customer is updated.

- **AfterCustomerDelete**
  - Logs an action after a customer is deleted.

### Indexes

- **Primary Key Index**
  - Created on `NewTable`.

- **Composite Index on Sales**
  - Created on `Sales` table for `CustomerID` and `EmployeeID`.

- **Composite Index on Equipment**
  - Created on `Equipment` table for `Name` and `Type`.

### Views

- **HorizontalView**
  - Selects specific columns from the `Customers` table.

- **VerticalView**
  - Selects specific rows from the `Customers` table.

- **InnerView**
  - Selects rows from the `Customers` table based on another view with a `WITH CHECK OPTION`.

### Database Security

- **Users**
  - `user1`, `user2`, `user3` with respective passwords.

- **Roles**
  - `finance`, `human_dev`, `warehouse`.

- **Privileges**
  - Granted various privileges to users and roles for accessing tables, views, and procedures.

## Sample Data Insertion

The script includes commands to insert sample data into each table, ensuring the database is populated for testing and development purposes.

## Usage

To set up and use this database, follow these steps:

1. Execute the provided SQL script in your MySQL Workbench.
2. Ensure all tables, functions, procedures, triggers, indexes, views, and security settings are created successfully.
3. Insert the sample data provided in the script.
4. Test the functions, procedures, and triggers to verify they work as expected.
5. Use the views to simplify data retrieval and manipulation.
6. Manage user access and privileges using the security settings.

## License

This project is licensed under the MIT License.
