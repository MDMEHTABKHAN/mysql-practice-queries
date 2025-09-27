
CREATE TABLE Departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dept_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Projects (
    proj_id INT PRIMARY KEY AUTO_INCREMENT,
    proj_name VARCHAR(100),
    emp_id INT,
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- ALTER commands in MySQL
ALTER TABLE Employees ADD COLUMN email VARCHAR(150);
ALTER TABLE Employees MODIFY COLUMN salary DECIMAL(12,2);
ALTER TABLE Employees DROP COLUMN email;
ALTER TABLE Employees RENAME COLUMN name TO full_name;
ALTER TABLE Employees CHANGE COLUMN full_name emp_name VARCHAR(150); -- MySQL-specific
ALTER TABLE Employees ADD CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES Departments(dept_id);
ALTER TABLE Employees DROP FOREIGN KEY fk_dept;
ALTER TABLE Employees RENAME TO Staff;
