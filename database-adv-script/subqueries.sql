--Non-Correlated Subquery--
SELECT 
    p.property_id,
    p.title,
    p.location
FROM Properties p
WHERE p.property_id IN (
    SELECT r.property_id
    FROM Reviews r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
)
ORDER BY p.title ASC;

--Correlated Subquery--
SELECT 
    u.user_id,
    u.name,
    u.email
FROM Users u
WHERE (
    SELECT COUNT(*)
    FROM Bookings b
    WHERE b.user_id = u.user_id
) > 3
ORDER BY u.name ASC;

