create database trig;
use trig;

CREATE TABLE employeees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE employee_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    action_type VARCHAR(20),
    action_date DATETIME
);


DELIMITER //
CREATE TRIGGER trg_employee_insert
AFTER INSERT ON employeees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log(emp_id, action_type, action_date)
    VALUES (NEW.emp_id, 'INSERT', NOW());
END //
DELIMITER ;

INSERT INTO employeees VALUES (101, 'Ravi', 50000);

SELECT * FROM employee_log;

DELIMITER //
CREATE TRIGGER trg_employee_update
AFTER UPDATE ON employeees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log(emp_id, action_type, action_date)
    VALUES (NEW.emp_id, 'UPDATE', NOW());
END //
DELIMITER ;

SHOW TRIGGERS;