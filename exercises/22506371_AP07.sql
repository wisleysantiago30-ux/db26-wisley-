/*A1*/


CREATE TABLE sales.warranty_claim(
    claim_id INT NOT NULL,
    custumer_id INT NOT NULL,
    staff_id INT NULL,
    product_code VARCHAR(20) NOT NULL,
    opened_on DATE NOT NULL,
    CONSTRAINT PK_warranty_claim PRIMARY KEY (claim_id)
);

SELECT * FROM sales.warranty_claim

SELECT * FROM sales.customers
    
/*A2*/

