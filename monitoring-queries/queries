•	Expiration Monitoring Queries
1.	Products Nearing Expiration (within 30 days)
This query lists products whose expiration date is within the next 30 days, so store owners can prioritize selling or promoting them.
SELECT 
    p.product_id,
    p.product_name,
    p.expiration_date,
    DATEDIFF(p.expiration_date, CURDATE()) AS days_to_expire
FROM Product p
WHERE p.expiration_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);
 

2.	Expired Products (Do Not Sell)
This query identifies products that are already expired, preventing accidental sale.
SELECT 
    p.product_id,
    p.product_name,
    p.expiration_date
FROM Product p
WHERE p.expiration_date < CURDATE();
 

3.	Products Safe for Sale (More than 30 days before expiry)
This query shows products that are still safe, with expiration dates more than 30 days away.
SELECT 
    p.product_id,
    p.product_name,
    p.expiration_date,
    DATEDIFF(p.expiration_date, CURDATE()) AS days_to_expire
FROM Product p
WHERE p.expiration_date > DATE_ADD(CURDATE(), INTERVAL 30 DAY);
 
•	Queries for Restocking
1.	Products With Sufficient Stock (No Need to Restock)
This query shows products where the inventory quantity is greater than the reorder level, meaning they don’t need restocking yet.
SELECT 
    p.product_id,
    p.product_name,
    i.inventory_quantity,
    i.reorder_level
FROM Product p
JOIN Inventory i ON p.product_id = i.product_id
WHERE i.inventory_quantity > i.reorder_level;
 

2.	Restock Status of All Products
This query shows all products with a computed column indicating whether they need restocking or not.
SELECT 
    p.product_id,
    p.product_name,
    i.inventory_quantity,
    i.reorder_level,
    CASE 
        WHEN i.inventory_quantity <= i.reorder_level THEN 'Needs Restock'
        ELSE 'Sufficient Stock'
    END AS restock_status
FROM Product p
JOIN Inventory i ON p.product_id = i.product_id;
 
  The Sari Smart Stock system integrates expiration monitoring and restocks level tracking to empower sari‑sari storekeepers with a modern, efficient tool for inventory management.
By continuously monitoring product expiration dates, the system helps prevent food spoilage, ensuring safe consumption and reducing unnecessary waste.
At the same time, it optimizes stock levels by identifying items that require timely restocking while avoiding costly overstocking. Products nearing expiry are highlighted for promotions or immediate sale,
supporting sustainability and protecting resources. Through these features, small business owners can manage their stocks profitably, strengthen community trust by consistently offering fresh goods,
and embrace digital literacy by adapting to accessible, technology‑driven practices that sustain their business operations.
