-- Show all details about properties located in Vancouver including their average rating.

-- Select all columns from the properties table for properties located in Vancouver, and the average rating for each property.
-- Order the results from lowest cost_per_night to highest cost_per_night.
-- Limit the number of results to 10.
-- Only show listings that have a rating >= 4 stars.


SELECT p.*, AVG(pr.rating) AS average_rating
FROM properties p
JOIN property_reviews pr ON p.id = pr.property_id
WHERE city = 'Vancouver'
GROUP BY p.id
HAVING AVG(pr.rating) >= 4
ORDER BY p.cost_per_night ASC
LIMIT 10;
