
-- Sample Data Seed for AirBnB Schema

-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('u001', 'Alice', 'Wang', 'alice@example.com', 'hashed_pw1', '0712345678', 'guest'),
('u002', 'Bob', 'Kariuki', 'bob@example.com', 'hashed_pw2', '0723456789', 'host'),
('u003', 'Clara', 'Otieno', 'clara@example.com', 'hashed_pw3', NULL, 'admin');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('p001', 'u002', 'Cozy Loft', 'A cozy place in Nairobi.', 'Nairobi, Kenya', 4500.00),
('p002', 'u002', 'Beach House', 'Relaxing beach house with ocean view.', 'Diani, Kenya', 10000.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('b001', 'p001', 'u001', '2025-07-01', '2025-07-05', 18000.00, 'confirmed'),
('b002', 'p002', 'u001', '2025-08-10', '2025-08-15', 50000.00, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('pay001', 'b001', 18000.00, 'credit_card'),
('pay002', 'b002', 50000.00, 'paypal');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('r001', 'p001', 'u001', 5, 'Great experience! Clean and quiet.'),
('r002', 'p002', 'u001', 4, 'Nice location, but power issues.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('m001', 'u001', 'u002', 'Is the property available in August?'),
('m002', 'u002', 'u001', 'Yes, it is! Let me know if you have questions.');
