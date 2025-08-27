-- ====================
-- Users (10 users: mix of guests, hosts, admin)
-- ====================
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '+1234567890', 'guest'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '+1987654321', 'host'),
  ('33333333-3333-3333-3333-333333333333', 'Carol', 'Williams', 'carol@example.com', 'hashed_pw3', '+14155552671', 'host'),
  ('44444444-4444-4444-4444-444444444444', 'David', 'Brown', 'david@example.com', 'hashed_pw4', '+447911123456', 'admin'),
  ('55555555-5555-5555-5555-555555555555', 'Eve', 'Davis', 'eve@example.com', 'hashed_pw5', '+33123456789', 'guest'),
  ('66666666-6666-6666-6666-666666666666', 'Frank', 'Miller', 'frank@example.com', 'hashed_pw6', '+4915112345678', 'guest'),
  ('77777777-7777-7777-7777-777777777777', 'Grace', 'Wilson', 'grace@example.com', 'hashed_pw7', '+61412345678', 'host'),
  ('88888888-8888-8888-8888-888888888888', 'Hank', 'Moore', 'hank@example.com', 'hashed_pw8', '+5511998765432', 'guest'),
  ('99999999-9999-9999-9999-999999999999', 'Ivy', 'Taylor', 'ivy@example.com', 'hashed_pw9', '+81312345678', 'host'),
  ('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Jack', 'Anderson', 'jack@example.com', 'hashed_pw10', '+8613712345678', 'guest');

-- ====================
-- Properties (8 properties from different hosts)
-- ====================
INSERT INTO Properties (property_id, host_id, name, description, location, price_per_night)
VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Apartment Downtown', '2-bedroom near city center', 'New York, USA', 120.00),
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '33333333-3333-3333-3333-333333333333', 'Beachfront Villa', 'Luxury villa with pool', 'Miami, USA', 350.00),
  ('aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '33333333-3333-3333-3333-333333333333', 'Mountain Cabin', 'Rustic cabin in nature', 'Denver, USA', 180.00),
  ('aaaaaaa4-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '77777777-7777-7777-7777-777777777777', 'City Loft', 'Modern loft with skyline view', 'Chicago, USA', 200.00),
  ('aaaaaaa5-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '77777777-7777-7777-7777-777777777777', 'Country Cottage', 'Charming cottage with garden', 'Nashville, USA', 140.00),
  ('aaaaaaa6-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999999-9999-9999-9999-999999999999', 'Tokyo Studio', 'Compact but stylish studio', 'Tokyo, Japan', 95.00),
  ('aaaaaaa7-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999999-9999-9999-9999-999999999999', 'Kyoto Traditional House', 'Machiya townhouse experience', 'Kyoto, Japan', 160.00),
  ('aaaaaaa8-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'LA Pool House', 'Spacious house with pool', 'Los Angeles, USA', 300.00);

-- ====================
-- Bookings (12 bookings with different statuses)
-- ====================
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-09-01', '2025-09-05', 480.00, 'confirmed'),
  ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '55555555-5555-5555-5555-555555555555', '2025-10-10', '2025-10-15', 1750.00, 'pending'),
  ('bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '66666666-6666-6666-6666-666666666666', '2025-11-20', '2025-11-22', 360.00, 'canceled'),
  ('bbbbbbb4-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa4-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '88888888-8888-8888-8888-888888888888', '2025-12-01', '2025-12-07', 1200.00, 'confirmed'),
  ('bbbbbbb5-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa5-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2025-08-15', '2025-08-18', 420.00, 'confirmed'),
  ('bbbbbbb6-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa6-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-09-20', '2025-09-23', 285.00, 'pending'),
  ('bbbbbbb7-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa7-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '55555555-5555-5555-5555-555555555555', '2025-10-05', '2025-10-09', 640.00, 'confirmed'),
  ('bbbbbbb8-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa8-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '66666666-6666-6666-6666-666666666666', '2025-11-11', '2025-11-15', 1200.00, 'pending'),
  ('bbbbbbb9-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '88888888-8888-8888-8888-888888888888', '2025-09-07', '2025-09-09', 240.00, 'canceled'),
  ('bbbbbbb10-bbbb-bbbb-bbbb-bbbbbbbbbbb', 'aaaaaaa6-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2025-12-24', '2025-12-28', 380.00, 'confirmed'),
  ('bbbbbbb11-bbbb-bbbb-bbbb-bbbbbbbbbbb', 'aaaaaaa7-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-12-29', '2026-01-02', 640.00, 'pending'),
  ('bbbbbbb12-bbbb-bbbb-bbbb-bbbbbbbbbbb', 'aaaaaaa8-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '55555555-5555-5555-5555-555555555555', '2025-09-01', '2025-09-04', 900.00, 'confirmed');

-- ====================
-- Payments (multiple, including partial)
-- ====================
INSERT INTO Payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('ccccccc1-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 480.00, 'credit_card'),
  ('ccccccc2-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 875.00, 'paypal'),
  ('ccccccc3-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 875.00, 'paypal'),
  ('ccccccc4-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb4-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 1200.00, 'stripe'),
  ('ccccccc5-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb5-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 420.00, 'credit_card'),
  ('ccccccc6-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb7-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 640.00, 'credit_card'),
  ('ccccccc7-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb10-bbbb-bbbb-bbbb-bbbbbbbbbbb', 380.00, 'paypal'),
  ('ccccccc8-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb12-bbbb-bbbb-bbbb-bbbbbbbbbbb', 900.00, 'stripe');

-- ====================
-- Reviews (multiple users reviewing properties)
-- ====================
INSERT INTO Reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('ddddddd1-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay!'),
  ('ddddddd2-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '66666666-6666-6666-6666-666666666666', 4, 'Cozy, but cold at night.'),
  ('ddddddd3-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '55555555-5555-5555-5555-555555555555', 5, 'The villa was breathtaking!'),
  ('ddddddd4-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa5-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 3, 'Nice cottage, but too far from downtown.'),
  ('ddddddd5-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa6-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 4, 'Compact but very clean.'),
  ('ddddddd6-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa7-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '55555555-5555-5555-5555-555555555555', 5, 'Best cultural experience!');

-- ====================
-- Messages (guest ↔ host communication)
-- ====================
INSERT INTO Messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeeee', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Bob, is your apartment available for early check-in?'),
  ('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeeee', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice, yes early check-in is possible.'),
  ('eeeeeee3-eeee-eeee-eeee-eeeeeeeeeeee', '55555555-5555-5555-5555-555555555555', '33333333-3333-3333-3333-333333333333', 'Hello Carol, is the villa pet-friendly?'),
  ('eeeeeee4-eeee-eeee-eeee-eeeeeeeeeeee', '33333333-3333-3333-3333-333333333333', '55555555-5555-5555-5555-555555555555', 'Hi Eve, yes pets are allowed!'),
  ('eeeeeee5-eeee-eeee-eeee-eeeeeeeeeeee', '88888888-8888-8888-8888-888888888888', '77777777-7777-7777-7777-777777777777', 'Grace, does the loft have free parking?');
