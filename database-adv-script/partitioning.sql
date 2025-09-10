-- Create main partitioned table
CREATE TABLE Booking_partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20)
) PARTITION BY RANGE (start_date);

-- Partition for 2025 bookings
CREATE TABLE Booking_2025 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Partition for 2026 bookings
CREATE TABLE Booking_2026 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

-- Test performance
EXPLAIN ANALYZE
SELECT *
FROM Booking_partitioned
WHERE start_date >= '2025-09-01'
  AND start_date <= '2025-09-30';
