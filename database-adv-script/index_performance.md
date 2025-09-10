# Using EXPLAIN

EXPLAIN shows the query execution plan without actually running it fully. It tells us how the database will scan the table (sequential scan, index scan, join method, etc.).

Example before adding indexes:
EXPLAIN
SELECT *
FROM Booking
WHERE user_id = 123;

Output will likely show Seq Scan if user_id isn’t indexed.

Example after adding an index:

EXPLAIN
SELECT *
FROM Booking
WHERE user_id = 123;

Now, you should see Index Scan, which is much faster for large tables.

# Using EXPLAIN ANALYZE

EXPLAIN ANALYZE actually runs the query and shows real execution time. Perfect to compare before and after adding indexes.

Example:

EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE user_id = 123;
Key metrics to look at:

Seq Scan vs Index Scan

Actual Time (ms)

Rows processed

After adding the index:

CREATE INDEX idx_booking_user_id ON Booking(user_id);

EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE user_id = 123;
You should see significantly lower Actual Time and Index Scan used.

## Steps to Compare Performance

Run EXPLAIN ANALYZE before creating indexes on key queries. Record the times.

Create the indexes (CREATE INDEX ...).

Run EXPLAIN ANALYZE after creating indexes on the same queries.

Compare:

Scan type: Seq Scan → Index Scan

Execution time: Should drop dramatically for large tables
