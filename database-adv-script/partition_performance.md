# Test Query performance
EXPLAIN ANALYZE
SELECT *
FROM Booking_partitioned
WHERE start_date >= '2025-09-01'
  AND start_date <= '2025-09-30';

  ✅ Expected behavior:

Only the partition Booking_2025 is scanned, instead of the whole table.

Actual Time should drop significantly compared to the non-partitioned table.

# Brief report template for improvements
Metric	Before Partitioning	After Partitioning	Improvement
Query: Bookings in Sept 2025	Seq Scan / 120ms	Index/Partition Scan / 10ms	91% faster
Rows scanned	100,000	10,000	90% fewer rows
Notes	Whole table scanned	Only relevant partition scanned	Much faster for date-range queries
