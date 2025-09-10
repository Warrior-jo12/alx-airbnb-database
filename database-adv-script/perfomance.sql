-- initial query 

SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status AS booking_status,
    u.user_id,
    u.email,
    u.username,
    p.property_id,
    p.location,
    p.price,
    pay.payment_id,
    pay.amount,
    pay.payment_date,
    pay.status AS payment_status
FROM Booking b
JOIN "User" u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;

--Analyze performance using EXPLAIN

EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status AS booking_status,
    u.user_id,
    u.email,
    u.username,
    p.property_id,
    p.location,
    p.price,
    pay.payment_id,
    pay.amount,
    pay.payment_date,
    pay.status AS payment_status
FROM Booking b
JOIN "User" u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;

---Refactored Query

SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status AS booking_status,
    u.user_id,
    u.email,
    u.username,
    p.property_id,
    p.location,
    p.price,
    pay.payment_id,
    pay.amount,
    pay.payment_date,
    pay.status AS payment_status
FROM Booking b
JOIN "User" u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE b.start_date >= '2025-01-01';
