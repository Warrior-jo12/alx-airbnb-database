# ER 
## Entities and thier attributes

1. User

user_id (PK, UUID, Indexed)

first_name (VARCHAR, NOT NULL)

last_name (VARCHAR, NOT NULL)

email (VARCHAR, UNIQUE, NOT NULL)

password_hash (VARCHAR, NOT NULL)

phone_number (VARCHAR, NULL)

role (ENUM: guest, host, admin, NOT NULL)

created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

2. Property

property_id (PK, UUID, Indexed)

host_id (FK → User.user_id)

name (VARCHAR, NOT NULL)

description (TEXT, NOT NULL)

location (VARCHAR, NOT NULL)

pricepernight (DECIMAL, NOT NULL)

created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

updated_at (TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP)

3. Booking

booking_id (PK, UUID, Indexed)

property_id (FK → Property.property_id)

user_id (FK → User.user_id)

start_date (DATE, NOT NULL)

end_date (DATE, NOT NULL)

total_price (DECIMAL, NOT NULL)

status (ENUM: pending, confirmed, canceled, NOT NULL)

created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

4. Payment

payment_id (PK, UUID, Indexed)

booking_id (FK → Booking.booking_id)

amount (DECIMAL, NOT NULL)

payment_date (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

payment_method (ENUM: credit_card, paypal, stripe, NOT NULL)

5. Review

review_id (PK, UUID, Indexed)

property_id (FK → Property.property_id)

user_id (FK → User.user_id)

rating (INTEGER, CHECK 1–5, NOT NULL)

comment (TEXT, NOT NULL)

created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

6. Message

message_id (PK, UUID, Indexed)

sender_id (FK → User.user_id)

recipient_id (FK → User.user_id)

message_body (TEXT, NOT NULL)

sent_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

## Entities relationship

Entity Relationships
1. User – Property

One User (host) can host many Properties.

Relationship: 1 : M

Key: Property.host_id → User.user_id

2. User – Booking

One User (guest) can make many Bookings.

Relationship: 1 : M

Key: Booking.user_id → User.user_id

3. Property – Booking

One Property can have many Bookings.

Relationship: 1 : M

Key: Booking.property_id → Property.property_id

4. Booking – Payment

One Booking can have many Payments (partial or multiple methods).

Relationship: 1 : M

Key: Payment.booking_id → Booking.booking_id

5. User – Review

One User (guest) can write many Reviews.

Relationship: 1 : M

Key: Review.user_id → User.user_id

6. Property – Review

One Property can receive many Reviews.

Relationship: 1 : M

Key: Review.property_id → Property.property_id

7. User – Message (self-relationship)

One User can send many Messages.

One User can receive many Messages.

Relationship: M : M (resolved via Message entity with sender_id and recipient_id)

Keys:

Message.sender_id → User.user_id

Message.recipient_id → User.user_id

## ER DIAGRAM
<img width="1624" height="506" alt="airbnb_erd_v2" src="https://github.com/user-attachments/assets/e9c665a4-f32d-4d27-81f7-46b46c640ffa" />



