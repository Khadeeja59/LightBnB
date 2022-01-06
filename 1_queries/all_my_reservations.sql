-- SELECT  properties.*, reservations.*, avg(property_reviews.rating) as average_rating
-- FROM property_reviews
-- JOIN reservations ON reservation_id = reservations.id
-- JOIN properties ON property_id = properties.id
-- WHERE propertie-reviews.guest_id = 1
-- HAVING reservations.start_date < now()::date
-- GROUP BY properties.id
-- ORDER BY reservations.start_date
-- LIMIT 10;

SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;
