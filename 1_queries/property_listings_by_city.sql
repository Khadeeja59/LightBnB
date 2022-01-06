
SELECT properties.id, properties.title, properties.cost_per_night, properties.city, avg (property_reviews.rating) as  average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
-- WHERE city LIKE '%ancouv%' AND property_reviews.rating >= 4
WHERE city LIKE '%ancouv%' 
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;
