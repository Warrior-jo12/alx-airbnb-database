# Monitor Query Performance
Using EXPLAIN ANALYZE

This is the most common method in PostgreSQL.

It actually runs the query and shows execution plan + actual times.

Example: Monitoring a frequently used query
EXPLAIN ANALYZE
SELECT *
FROM Booking_partitioned
WHERE user_id = 123
  AND start_date BETWEEN '2025-09-01' AND '2025-09-30';

What to look for:

Scan type: Seq Scan, Index Scan, Bitmap Scan

Join method: Nested Loop, Hash Join, Merge Join

Actual Time: total execution time in ms

Rows: number of rows scanned vs returned

## Optional: SHOW PROFILE (MySQL)

If you were using MySQL, SHOW PROFILE gives CPU, memory, and I/O stats for a query.

Example:
SET profiling = 1;
SELECT * FROM Booking WHERE user_id = 123;
SHOW PROFILE;

# Identify Bottlenecks

Common bottlenecks:

Seq Scan on large tables → consider indexing.

Nested Loop Join on large tables → consider hash or merge join, or filtering rows first.

Sorting large result sets → consider indexes on ORDER BY columns.

Too many joins → consider denormalization for very frequent queries.

Example:

Query scanning 1M rows on Booking → Seq Scan → add index on user_id or start_date.

Query joining Booking → User → Property with Nested Loop → filter rows first or add indexes on join columns.

# implement Changes
Examples of Refinements

Add missing indexes
