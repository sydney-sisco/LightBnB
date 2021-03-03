-- Get a list of the most visited cities.

-- Select the name of the city and the number of reservations for that city.
-- Order the results from highest number of reservations to lowest number 
-- of reservations.

SELECT p.city, COUNT(*) as total_reservations
FROM properties p
JOIN reservations r ON r.property_id = p.id
GROUP BY p.city
ORDER BY total_reservations DESC;
