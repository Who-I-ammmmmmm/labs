INSERT INTO Employees (EmployeeID, EmployeeNumber, LastName, FirstName, MiddleName, PassportData, DateOfBirth, PlaceOfBirth, HomeAddress, Salary)
VALUES
    (1, 1001, 'Smith', 'John', 'Robert', 'ABCD1234', '1980-05-10', 'New York', '123 Main St', 5000.00),
    (2, 1002, 'Johnson', 'Lisa', 'Marie', 'EFGH5678', '1992-09-15', 'Los Angeles', '456 Elm St', 6000.00),
    (3, 1003, 'Williams', 'David', NULL, 'IJKL9123', '1985-02-28', 'Chicago', '789 Oak St', 5500.00),
    (4, 1004, 'Brown', 'Emily', 'Anne', 'MNOP4567', '1990-11-20', 'Houston', '321 Cedar St', 4500.00),
    (5, 1005, 'Jones', 'Michael', 'Thomas', 'QRST8901', '1988-07-08', 'Miami', '987 Pine St', 7000.00),
    (6, 1006, 'Davis', 'Jennifer', 'Elizabeth', 'UVWX2345', '1993-04-17', 'Seattle', '654 Maple St', 8000.00),
    (7, 1007, 'Miller', 'Andrew', 'James', 'YZAB6789', '1982-01-05', 'San Francisco', '159 Birch St', 5500.00),
    (8, 1008, 'Wilson', 'Jessica', 'Nicole', 'CDEF0123', '1987-06-25', 'Boston', '357 Willow St', 6000.00),
    (9, 1009, 'Anderson', 'Matthew', 'David', 'GHIJ4567', '1991-03-12', 'Dallas', '753 Oak St', 6500.00),
    (10, 1010, 'Taylor', 'Sarah', NULL, 'KLMN8901', '1984-08-30', 'Phoenix', '852 Elm St', 5000.00);

INSERT INTO Departments (DepartmentID, name, Abbreviation, Manager)
VALUES
    (1, 'Sales Department', 'SALES', 2),
    (2, 'Marketing Department', 'MARKET', 5),
    (3, 'Finance Department', 'FINANCE', 7),
    (4, 'Human Resources Department', 'HR', 3),
    (5, 'Operations Department', 'OPS', 8),
    (6, 'IT Department', 'IT', 6),
    (7, 'Research and Development Department', 'R&D', 4),
    (8, 'Customer Support Department', 'SUPPORT', 1),
    (9, 'Production Department', 'PROD', 9),
    (10, 'Quality Assurance Department', 'QA', 10);
INSERT INTO Positions (PositionID, name)
VALUES
    (1, 'Manager'),
    (2, 'Supervisor'),
    (3, 'Analyst'),
    (4, 'Coordinator'),
    (5, 'Specialist'),
    (6, 'Engineer'),
    (7, 'Assistant'),
    (8, 'Technician'),
    (9, 'Administrator'),
    (10, 'Consultant');
INSERT INTO PositionHistory (RecordID, EmployeeID, PositionID, StartDate, EndDate)
VALUES
    (1, 1, 2, '2019-01-01', '2020-12-31'),
    (2, 2, 5, '2020-03-15', NULL),
    (3, 3, 1, '2018-06-01', '2021-09-30'),
    (4, 4, 3, '2019-08-10', '2022-02-28'),
    (5, 5, 6, '2021-01-01', NULL),
    (6, 6, 4, '2020-05-01', '2023-03-31'),
    (7, 7, 7, '2019-02-15', NULL),
    (8, 8, 2, '2017-09-01', '2021-06-30'),
    (9, 9, 8, '2022-01-01', NULL),
    (10, 10, 9, '2018-12-01', '2022-05-31');

INSERT INTO Vacations (VacationID, EmployeeID, StartDate, EndDate)
VALUES
    (1, 1, '2022-07-01', '2022-07-15'),
    (2, 2, '2023-03-10', '2023-03-20'),
    (3, 3, '2022-08-15', '2022-08-30'),
    (4, 4, '2023-05-01', '2023-05-05'),
    (5, 5, '2022-12-20', '2022-12-31'),
    (6, 6, '2023-06-10', '2023-06-20'),
    (7, 7, '2022-09-15', '2022-09-30'),
    (8, 8, '2023-01-05', '2023-01-10'),
    (9, 9, '2022-07-20', '2022-08-05'),
    (10, 10, '2023-04-15', '2023-04-30');

INSERT INTO DepartmentEmployees (DepartmentID, EmployeeID)
VALUES
    (1, 2),
    (2, 5),
    (3, 7),
    (4, 3),
    (5, 8),
    (6, 6),
    (7, 4),
    (8, 1),
    (9, 9),
    (10, 10);

INSERT INTO DepartmentVacations (DepartmentID, VacationID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

INSERT INTO Reports (ReportID, name)
VALUES
    (1, 'Monthly Sales Report'),
    (2, 'Marketing Campaign Analysis'),
    (3, 'Financial Performance Review'),
    (4, 'Employee Satisfaction Survey'),
    (5, 'Operations Efficiency Report'),
    (6, 'IT System Upgrade Plan'),
    (7, 'Research and Development Proposal'),
    (8, 'Customer Support Feedback Analysis'),
    (9, 'Production Capacity Assessment'),
    (10, 'Quality Assurance Audit Report');
