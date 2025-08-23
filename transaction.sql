

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    holder_name VARCHAR(50),
    balance DECIMAL(10,2)
);




INSERT INTO accounts VALUES (1, 'Alice', 5000.00);
INSERT INTO accounts VALUES (2, 'Bob', 3000.00);
INSERT INTO accounts VALUES (3, 'Charlie', 7000.00);



SELECT * FROM accounts;


START TRANSACTION;


UPDATE accounts SET balance = balance - 1000 WHERE account_id = 1; 
UPDATE accounts SET balance = balance + 1000 WHERE account_id = 2;



ROLLBACK;

COMMIT;




START TRANSACTION;

UPDATE accounts SET balance = balance - 500 WHERE account_id = 2;
SAVEPOINT step1;

UPDATE accounts SET balance = balance + 500 WHERE account_id = 3;
SAVEPOINT step2;

-- Oops! Business rule violation → Rollback to step1
ROLLBACK TO step1;

COMMIT;
