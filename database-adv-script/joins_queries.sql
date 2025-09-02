--INNER JOIN--
SELECT 
    b.booking_id,
    u.user_id,
    u.name AS user_name,
    b.property_id,
    b.check_in,
    b.check_out,
    b.status
FROM Bookings b
INNER JOIN Users u 
    ON b.user_id = u.user_id
ORDER BY b.check_in DESC;


-- Left Join ---
SELECT 
    p.property_id,
    p.title AS property_title,
    r.review_id,
    r.rating,
    r.comment
FROM Properties p
LEFT JOIN Reviews r 
    ON p.property_id = r.property_id
ORDER BY p.title ASC, r.rating DESC;

--Full outer join--
SELECT 
    u.user_id,
    u.name AS user_name,
    b.booking_id,
    b.property_id,
    b.check_in,
    b.check_out,
    b.status
FROM Users u
FULL OUTER JOIN Bookings b
    ON u.user_id = b.user_id
ORDER BY u.name ASC, b.check_in DESC;
