/*A1*/

CREATE TABLE production.review_queue(
    product_id INT NOT NULL,
    review_note NVARCHAR(200) NULL,
    score DECIMAL(10,2) NULL,
    review_date DATE NOT NULL
);