--User Table
--Typical columns: user_id, email, username, created_at, etc.
---High-usage columns:
--user_id → used in JOINs with Booking (primary key, already indexed by default, but double-check)
--email → often used in WHERE email = ? queries
--username → sometimes searched, e.g., for login
--created_at → if you query by signup date or sort users

CREATE UNIQUE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_username ON User(username);
CREATE INDEX idx_user_created_at ON User(created_at);


--Booking Table
--Typical columns: booking_id, user_id, property_id, start_date, end_date, status, etc.
--High-usage columns:
--user_id → JOIN with User
--property_id → JOIN with Property
--start_date & end_date → often used in WHERE filters (booking between dates)
--status → filter bookings by status (e.g., active, canceled)

CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);
CREATE INDEX idx_booking_end_date ON Booking(end_date);
CREATE INDEX idx_booking_status ON Booking(status);

--Property Table
--Typical columns: property_id, host_id, location, price, created_at, etc.
--High-usage columns:
--property_id → JOIN with Booking (primary key, already indexed)
--host_id → JOIN with User
--location → WHERE location = ?
--price → WHERE price range / ORDER BY price
--created_at → sort by newest properties

CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(price);
CREATE INDEX idx_property_created_at ON Property(created_at);








