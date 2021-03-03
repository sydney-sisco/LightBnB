INSERT INTO users (name, email, password) 
VALUES 
  ('example user', 'hello@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('test user', 'hello@test.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('sample user', 'hello@sample.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');


INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES
  (1, 'My Basement', 'It is underground, you will love it', 'http://example.com/my_basement_small.bmp', 'http://example.com/my_basement.bmp', 50, 1, 1, 1, 'Canada', '123 Street st.', 'Town', 'BC', 'H0H0H0', true),
  (1, 'My Attic', 'It is up high, you might love it', 'http://example.com/my_attic_small.bmp', 'http://example.com/my_attic.bmp', 60, 1, 1, 1, 'Canada', '123 Street st.', 'Town', 'BC', 'H0H0H0', true),
  (2, 'Gravel Pit', 'Just a gravel pit.', 'http://example.com/gravel_small.bmp', 'http://example.com/gravel.bmp', 100, 3, 1, 0, 'Canada', '123 Gravel rd.', 'Quarry', 'BC', 'A0B1C2', true);


INSERT INTO reservations (guest_id, property_id, start_date, end_date)
VALUES
  (3, 1, '2020-11-03', '2020-11-10'),
  (3, 2, '2021-02-05', '2021-02-06'),
  (2, 3, '2021-01-01', '2021-02-01');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, message, rating)
VALUES
  (3, 1, 1, 'just right', 5),
  (3, 2, 2, 'too hot', 3),
  (2, 3, 3, 'yucky', 1);
