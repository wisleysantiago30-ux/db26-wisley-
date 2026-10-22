/*A1*/

CREATE TABLE HR.learning_project (
    project_id INT NOT NULL,
    title NVARCHAR(80) NULL,
    budget DECIMAL(10, 2) NULL,
    due_date DATE NULL
);

SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'HR' AND TABLE_NAME = 'learning_project'

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'HR' AND TABLE_NAME = 'learning_project';

/*A2*/

ALTER TABLE HR.learning_project
ADD status_code VARCHAR(12) NULL;

ALTER TABLE HR.learning_project
ALTER COLUMN status_code VARCHAR(20) NULL;

SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'HR' AND TABLE_NAME = 'learning_project' AND COLUMN_NAME = 'status_code'

/*A3*/

GO
CREATE VIEW HR.vw_department_headcount AS
SELECT department_id, COUNT(*) AS employee_count
FROM HR.employees 
GROUP BY department_id;
GO

SELECT department_id, employee_count
FROM HR.vw_department_headcount
WHERE employee_count >= 3
ORDER BY employee_count DESC;


