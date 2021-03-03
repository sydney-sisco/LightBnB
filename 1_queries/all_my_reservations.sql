-- Show all reservations for a user.

-- Select all columns from the reservations table, 
-- all columns from the properties table, 
-- and the average rating of the property.
-- The reservations will be for a single user, so use 1 for the user_id.
-- Order the results from the earliest start_date to the most recent start_date.
-- These will end up being filtered by either "Upcoming Reservations" 
-- or "Past Reservations", so only get reservations where the end_date is in the past.
-- Use now()::date to get today's date.
-- Limit the results to 10.

SELECT r.*, p.*, AVG(pr.rating) as average_rating
FROM reservations r
JOIN properties p ON r.property_id = p.id
JOIN property_reviews pr ON pr.property_id = p.id
WHERE r.guest_id = 1
AND end_date <= NOW()::date
GROUP BY r.id, p.id
ORDER BY r.start_date
LIMIT 10;
