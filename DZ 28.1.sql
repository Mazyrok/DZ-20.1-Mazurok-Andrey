USE `hillel-qauto-buggy`;

SELECT * FROM user_profiles 
WHERE name LIKE '%am%';

SELECT MAX(e.totalCost) AS max_expense FROM expenses e
JOIN cars c ON e.carId = c.id
JOIN car_models cm ON c.carModelId = cm.id
JOIN car_brands cb ON cm.carBrandId = cb.id
WHERE cb.title = 'Audi';

SELECT cb.id AS car_id, COUNT(cm.id) AS count_models FROM car_brands cb
JOIN car_models cm ON cb.id = cm.carBrandId
WHERE cb.title IN ('Audi', 'BMW')
GROUP BY cb.id;

SELECT cm.title AS car_model, cb.title AS car_brand, COUNT(DISTINCT c.userId) AS user_count FROM cars c
JOIN car_models cm ON c.carModelId = cm.id
JOIN car_brands cb ON cm.carBrandId = cb.id
GROUP BY cm.id, cb.id;

SELECT DISTINCT up.name, up.lastName FROM user_profiles up
JOIN cars c ON up.userId = c.userId;