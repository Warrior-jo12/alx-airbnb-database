# Normalization

1. User
1NF

Attributes are atomic (no repeating groups, no multi-valued fields).

Example: first_name and last_name are separate, not combined. ✅

2NF

PK = user_id.

All non-key attributes (first_name, email, role, etc.) depend on the whole PK (not part of it).

Since user_id is a single attribute, no partial dependency. ✅

3NF

No transitive dependencies (e.g., role does not determine another non-key attribute).

Every attribute depends only on user_id. ✅

👉 Already in 3NF.

🔹 2. Property
1NF

Attributes are atomic (location, pricepernight are indivisible). ✅

2NF

PK = property_id.

All attributes depend entirely on property_id (not partially). ✅

3NF

No transitive dependencies (e.g., location does not determine pricepernight).

host_id is a FK → still valid, as dependency is to another table. ✅

👉 Already in 3NF.

🔹 3. Booking
1NF

Atomic attributes: start_date, end_date, status, etc. ✅

2NF

PK = booking_id.

All attributes (dates, price, status) depend on the full booking_id. ✅

3NF

No non-key attribute depends on another non-key attribute.

total_price could theoretically be derived from pricepernight * nights, but storing it is acceptable for performance → if we want strict 3NF, we could remove total_price and calculate it dynamically.

👉 In 3NF (with small note about total_price).

🔹 4. Payment
1NF

Attributes are atomic (amount, payment_date, etc.). ✅

2NF

PK = payment_id.

All attributes depend only on payment_id. ✅

3NF

No transitive dependency: payment_method depends only on payment_id. ✅

👉 Already in 3NF.

🔹 5. Review
1NF

Attributes are atomic (rating, comment, etc.). ✅

2NF

PK = review_id.

All attributes depend on the full PK. ✅

3NF

No transitive dependencies.

rating is restricted by a CHECK constraint, but that’s fine. ✅

👉 Already in 3NF.

🔹 6. Message
1NF

Attributes are atomic (sender_id, recipient_id, message_body). ✅

2NF

PK = message_id.

All attributes depend only on message_id. ✅

3NF

No transitive dependencies. ✅

👉 Already in 3NF.

✅ Summary

All six entities (User, Property, Booking, Payment, Review, Message) are already in Third Normal Form (3NF).
