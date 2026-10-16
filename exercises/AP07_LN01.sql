CREATE TABLE HR.training_job (
    job_id INT NOT NULL PRIMARY KEY,
    job_code VARCHAR(10) NOT NULL UNIQUE
);
CREATE TABLE HR.training_assignment (
    assignment_id INT NOT NULL PRIMARY KEY,
    job_code VARCHAR(10) NOT NULL
);

SELECT * FROM INFORMATION_SCHEMA.TABLES t WHERE t.TABLE_NAME LIKE '%training%';

INSERT INTO HR.training_job
    VALUES(1, 'A')

INSERT INTO HR.training_assignment
    VALUES(2, 'B')    


SELECT * FROM HR.training_job
 
SELECT * FROM HR.training_assignment 

ALTER TABLE HR.training_assignment
    ADD CONSTRAINT FK_training_assignment_job
    FOREIGN KEY (job_code)
    REFERENCES HR.training_job (job_code);

UPDATE HR.training_assignment 
    SET job_code = 'A'
    WHERE assignment_id = 2
