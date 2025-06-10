INSERT INTO user (name, email, password, role, isPremium, isVerified) VALUES 
('John Doe', 'john@example.com', '$2a$10$EIXZ5Q1t1h5Z1g5Z5g5Z5O', 'BUYER', false, true),
('Jane Smith', 'jane@example.com', '$2a$10$EIXZ5Q1t1h5Z1g5Z5g5Z5O', 'SELLER', true, true),
('Admin User', 'admin@example.com', '$2a$10$EIXZ5Q1t1h5Z1g5Z5g5Z5O', 'ADMIN', false, true);

INSERT INTO car (brand, model, year, price, description, imagePath, city, isFeatured, seller_id) VALUES 
('Toyota', 'Camry', 2020, 24000, 'A reliable sedan with great fuel efficiency.', '/images/toyota_camry.jpg', 'New York', true, 2),
('Honda', 'Civic', 2019, 22000, 'Sporty and compact, perfect for city driving.', '/images/honda_civic.jpg', 'Los Angeles', false, 2),
('Ford', 'Mustang', 2021, 35000, 'A classic American muscle car.', '/images/ford_mustang.jpg', 'Chicago', true, 2);

INSERT INTO message (sender_id, receiver_id, message, timestamp) VALUES 
(1, 2, 'Is the Toyota Camry still available?', NOW()),
(2, 1, 'Yes, it is available. Feel free to ask any questions.', NOW());

INSERT INTO subscription (user_id, amount, status, date) VALUES 
(1, 9.99, 'PAID', NOW()),
(2, 19.99, 'PAID', NOW());

INSERT INTO ad (title, imageUrl, link, isActive) VALUES 
('Buy a Car Today!', '/images/ad1.jpg', 'https://example.com/ad1', true),
('Special Offer on SUVs!', '/images/ad2.jpg', 'https://example.com/ad2', true);

INSERT INTO saved_car (user_id, car_id) VALUES 
(1, 1),
(1, 2);