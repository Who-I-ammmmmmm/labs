IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Employees')
BEGIN
   CREATE TABLE Employees (
        EmployeeID INT PRIMARY KEY,
        EmployeeNumber INT NOT NULL,
        LastName NVARCHAR(50) NOT NULL,
        FirstName NVARCHAR(50) NOT NULL,
        MiddleName NVARCHAR(50),
        PassportData NVARCHAR(100) NOT NULL,
        DateOfBirth DATE NOT NULL,
        PlaceOfBirth NVARCHAR(100) NOT NULL,
        HomeAddress NVARCHAR(200) NOT NULL,
        Salary DECIMAL(10, 2) NOT NULL,
        CONSTRAINT CHK_EmployeeNumber CHECK (EmployeeNumber > 0),
        CONSTRAINT CHK_DateOfBirth CHECK (DateOfBirth <= GETDATE()),
        CONSTRAINT CHK_Salary CHECK (Salary >= 0)
    );
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Departments')
BEGIN
    CREATE TABLE Departments (
        DepartmentID INT PRIMARY KEY,
        Name NVARCHAR(100) NOT NULL,
        Abbreviation NVARCHAR(10) NOT NULL,
        Manager INT,
        CONSTRAINT F
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Positions')
BEGIN
    CREATE TABLE Positions (
        PositionID INT PRIMARY KEY,
        Name NVARCHAR(100) NOT NULL
    );
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'PositionHistory')
BEGIN
    CREATE TABLE PositionHistory (
        RecordID INT PRIMARY KEY,
        EmployeeID INT NOT NULL,
        PositionID INT NOT NULL,
        StartDate DATE NOT NULL,
        EndDate DATE,
        CONSTRAINT FK_PositionHistory_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
        CONSTRAINT FK_PositionHistory_Positions FOREIGN KEY (PositionID) REFERENCES Positions (PositionID),
        CONSTRAINT CHK_PositionHistory_Dates CHECK (StartDate <= EndDate)
    );
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Vacations')
BEGIN
    CREATE TABLE Vacations (
        VacationID INT PRIMARY KEY,
        EmployeeID INT NOT NULL,
        StartDate DATE NOT NULL,
        EndDate DATE NOT NULL,
        CONSTRAINT FK_Vacations_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
        CONSTRAINT CHK_Vacations_Dates CHECK (StartDate <= EndDate)
    );
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'DepartmentVacations')
BEGIN
    CREATE TABLE DepartmentVacations (
        DepartmentID INT,
        VacationID INT,
        CONSTRAINT FK_DepartmentVacations_Department FOREIGN KEY (DepartmentID) REFERENCES Departments (DepartmentID),
        CONSTRAINT FK_DepartmentVacations_Vacation FOREIGN KEY (VacationID) REFERENCES Vacations (VacationID)
    );
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'DepartmentEmployees')
BEGIN
	CREATE TABLE DepartmentEmployees (
		DepartmentID INT,
		EmployeeID INT,
		CONSTRAINT FK_DepartmentEmployees_Department FOREIGN KEY (DepartmentID) REFERENCES Departments (DepartmentID),
		CONSTRAINT FK_DepartmentEmployees_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID)
	);
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'DepartmentEmployees')
BEGIN
	CREATE UNIQUE INDEX IDX_DepartmentEmployees ON DepartmentEmployees (DepartmentID);
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Reports')
BEGIN
	CREATE TABLE Reports (
		ReportID INT PRIMARY KEY,
		name NVARCHAR(100) NOT NULL
	);
END

