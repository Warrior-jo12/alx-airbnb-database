# EXPLAIN ANALYZE
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

Things to look for:

Are there Seq Scans on large tables?

Are there nested loop joins causing slow execution?

Are any columns used in WHERE/JOIN not indexed?

#Refactoring Ideas

Here’s how we can improve:

Indexing

Make sure these columns are indexed:

Booking.user_id

Booking.property_id

Payment.booking_id

Only select needed columns

Avoid SELECT *; we already specified columns, good.

Use INNER JOIN only if Payment is mandatory

If some bookings don’t have payment yet, LEFT JOIN is necessary.

Optional: CTEs for clarity (helps in complex filtering, but not always faster)
