--------------------------------------------------------------------------------
-- Student Number : a22506371
-- Student Name   : Wísley SIlva
-- Class          : 
-- Date           : October 23, 2026
-- Assignment     : AP08 - BikeStores Database Queries & Analysis
--------------------------------------------------------------------------------

/*A1*/

SELECT  p.product_id,p.product_name,b.brand_name
FROM production.products AS p
INNER JOIN production.brands AS b 
    ON p.brand_id = b.brand_id
WHERE p.product_id BETWEEN 1 AND 10
ORDER BY p.product_id;
GO

/*A2*/

SELECT c.product_id AS candidate_id, 
       r.product_id AS reference_id