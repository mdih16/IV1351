-- Insert fake data into person table
INSERT INTO person (person_number, first_name, last_name, email, phone_number, street, zip, city)
VALUES
  -- Students
  ('199001011234', 'Anna', 'Andersson', 'anna.andersson@example.com', '0701234567', 'Storgatan 123', '12345', 'Stockholm'),
  ('199804201234', 'Maria', 'Mårtensson', 'maria.martensson@example.com', '0765554321', 'Vägen 789', '78901', 'Malmo'),
  ('200112071234', 'Olivia', 'Olofsson', 'olivia.olofsson@example.com', '0701122334', 'Lindgatan 56', '56789', 'Uppsala'),
  ('200310152345', 'Lucas', 'Lundgren', 'lucas.lundgren@example.com', '0723344556', 'Ekbacken 78', '34567', 'Linköping'),
  ('200504201234', 'Sara', 'Svensson', 'sara.svensson@example.com', '0709988776', 'Götgatan 89', '89898', 'Karlstad'),
  ('200612071235', 'Oscar', 'Olsson', 'oscar.olsson@example.com', '0722334455', 'Karlsgatan 56', '56565', 'Helsingborg'),
  ('201004201235', 'Filip', 'Fredriksson', 'filip.fredriksson@example.com', '0701122334', 'Bergsgatan 45', '45454', 'Gävle'),
  ('201212071234', 'Isabella', 'Isaksson', 'isabella.isaksson@example.com', '0723344556', 'Skogsgatan 67', '67676', 'Kalmar'),
   -- Siblings with the same surname 'Jansson'
  ('199112011235', 'Nina', 'Jansson', 'nina.jansson@example.com', '0701234567', 'Storgatan 123', '12345', 'Stockholm'),
  ('199504152346', 'Alexander', 'Jansson', 'alexander.jansson@example.com', '0739876543', 'Lillgatan 456', '45678', 'Gothenburg'),
  -- Siblings with the same surname 'Lindqvist'
  ('199808201235', 'Emilie', 'Lindqvist', 'emilie.lindqvist@example.com', '0765554321', 'Vägen 789', '78901', 'Malmo'),
  ('200012071235', 'Elias', 'Lindqvist', 'elias.lindqvist@example.com', '0701122334', 'Lindgatan 56', '56789', 'Uppsala'),
  -- Siblings with the same surname 'Berggren'
  ('198212071235', 'Emma', 'Berggren', 'emma.berggren@example.com', '0723344556', 'Åsgatan 45', '45454', 'Växjö'),
  ('198512152346', 'Gustav', 'Berggren', 'gustav.berggren@example.com', '0735566778', 'Strandvägen 67', '67676', 'Jönköping'),
  -- Siblings with the same surname 'Sundqvist'
  ('200504201235', 'Sara', 'Sundqvist', 'sara.sundqvist@example.com', '0709988776', 'Götgatan 89', '89898', 'Karlstad'),
  ('200612071234', 'Oliver', 'Sundqvist', 'oliver.sundqvist@example.com', '0722334455', 'Karlsgatan 56', '56565', 'Helsingborg'),
  -- Siblings with the same surname 'Björklund'
  ('200802152345', 'Elin', 'Björklund', 'elin.bjorklund@example.com', '0733344556', 'Hästgatan 34', '34343', 'Umeå'),
  ('201004201234', 'Filip', 'Björklund', 'filip.bjorklund@example.com', '0701122334', 'Bergsgatan 45', '45454', 'Gävle'),
   -- Siblings with the last name 'Andersson'
  ('199112011234', 'Amanda', 'Andersson', 'amanda.andersson@example.com', '0701234567', 'Storgatan 123', '12345', 'Stockholm'),
  ('199504152345', 'Alexander', 'Andersson', 'alexander.andersson@example.com', '0739876543', 'Lillgatan 456', '45678', 'Gothenburg'),
  ('199808201236', 'Alma', 'Andersson', 'alma.andersson@example.com', '0761122334', 'Skogsvägen 789', '78901', 'Malmo'),
  -- Siblings with the last name 'Eriksson'
  ('199808201234', 'Emilie', 'Eriksson', 'emilie.eriksson@example.com', '0765554321', 'Vägen 789', '78901', 'Malmo'),
  ('200012071234', 'Elias', 'Eriksson', 'elias.eriksson@example.com', '0701122334', 'Lindgatan 56', '56789', 'Uppsala'),
  ('200404152345', 'Elin', 'Eriksson', 'elin.eriksson@example.com', '0723344556', 'Björkgatan 789', '78978', 'Lund'),
  -- Siblings with the last name 'Karlsson'
  ('197512152345', 'Klara', 'Karlsson', 'klara.karlsson@example.com', '0709876543', 'Skolgatan 987', '98765', 'Västerås'),
  ('197804201235', 'Karl', 'Karlsson', 'karl.karlsson@example.com', '0765556789', 'Björkgatan 12', '12123', 'Örebro'),
  ('198104152345', 'Karolina', 'Karlsson', 'karolina.karlsson@example.com', '0735566778', 'Strandvägen 34', '34343', 'Norrköping'),
  -- Teachers
  ('197502152345', 'Anders', 'Andersson', 'anders.andersson@example.com', '0709876543', 'Skolgatan 987', '98765', 'Västerås'),
  ('197804201234', 'Karin', 'Karlsson', 'karin.karlsson@example.com', '0765556789', 'Björkgatan 12', '12123', 'Örebro'),
  ('198003071234', 'Johan', 'Johansson', 'johan.johansson@example.com', '0701122334', 'Havsgatan 34', '34343', 'Norrköping'),
  ('198212071234', 'Emma', 'Emilsson', 'emma.emilsson@example.com', '0723344556', 'Åsgatan 45', '45454', 'Växjö'),
  ('198512152345', 'Gustav', 'Gustavsson', 'gustav.gustavsson@example.com', '0735566778', 'Strandvägen 67', '67676', 'Jönköping'),
  -- Contact persons
  ('196512152345', 'Marianne', 'Mårtensson', 'marianne.martensson@example.com', '0709876543', 'Ängsvägen 123', '54321', 'Göteborg'),
  ('196804201234', 'Bengt', 'Bengtsson', 'bengt.bengtsson@example.com', '0765556789', 'Skogsvägen 456', '45678', 'Halmstad'),
  ('196203071234', 'Ingrid', 'Isaksson', 'ingrid.isaksson@example.com', '0701122334', 'Havsvägen 789', '78901', 'Stockholm'),
  ('196712071234', 'Erik', 'Eriksson', 'erik.eriksson@example.com', '0723344556', 'Bergvägen 56', '56789', 'Malmö'),
  ('196804152345', 'Karl', 'Karlsson', 'karl.karlsson@example.com', '0735566778', 'Strandvägen 12', '12123', 'Lund');

-- Insert fake data into contact_person table
INSERT INTO contact_person (person_id)
VALUES
    (33),
    (34),
    (35),
    (36),
    (37);

-- Inserting fake data into the student table with contact_person_id set to null for individuals over 18

INSERT INTO student (person_id, contact_person_id)
VALUES
  (1, null),
  (2, null),
  (3, null),
  (4, null),
  (5, null),
  (6, 1),
  (7, 2),
  (8, 3),
  (9, null),
  (10, null),
  (11, null),
  (12, null),
  (13, null),
  (14, null),
  (15, 3),
  (16, 4),
  (17, 5),
  (18, 5),
  (19, null),
  (20, null),
  (21, null),
  (22, null),
  (23, null),
  (24, null),
  (25, null),
  (26, null),
  (27, null);

-- Insert fake data into sibling table
INSERT INTO sibling (student_id_1, student_id_2)
VALUES
    (9, 10),
    (11, 12),
    (13, 14),
    (15, 16),
    (17, 18),
    (19, 20),
    (19, 21),
    (20, 21),
    (22, 23),
    (22, 24),
    (23, 24),
    (25, 26),
    (25, 27),
    (26, 27);


-- Insert fake data into instructor table
INSERT INTO instructor (person_id, ensemble_instructor)
VALUES
    (28, false),
    (29, false),
    (30, true),
    (31, false),
    (32, true);

-- Insert fake data into time_slot table
INSERT INTO time_slot (instructor_id, start_time, end_time)
VALUES
  (3, '2023-09-01 09:00:00', '2023-09-01 10:00:00'),
  (3, '2023-09-15 10:30:00', '2023-09-15 11:30:00'),
  (3, '2023-10-01 12:00:00', '2023-10-01 13:00:00'),
  (3, '2023-10-15 14:00:00', '2023-10-15 15:00:00'),
  (3, '2023-11-01 16:30:00', '2023-11-01 17:30:00'),
  (3, '2023-11-15 18:00:00', '2023-11-15 19:00:00'),
  (3, '2023-12-01 09:30:00', '2023-12-01 10:30:00'),
  (3, '2023-12-15 11:00:00', '2023-12-15 12:00:00'),
  (3, '2023-12-30 13:30:00', '2023-12-30 14:30:00'),
  (3, '2023-09-10 15:00:00', '2023-09-10 16:00:00'),
  (3, '2023-09-25 17:30:00', '2023-09-25 18:30:00'),
  (3, '2023-10-10 19:00:00', '2023-10-10 20:00:00'),
  (3, '2023-10-25 21:30:00', '2023-10-25 22:30:00'),
  (3, '2023-11-10 09:00:00', '2023-11-10 10:00:00'),
  (3, '2023-11-25 10:30:00', '2023-11-25 11:30:00'),
  (3, '2023-12-10 12:00:00', '2023-12-10 13:00:00'),
  (3, '2023-12-25 14:30:00', '2023-12-25 15:30:00'),
  (3, '2023-09-05 16:00:00', '2023-09-05 17:00:00'),
  (3, '2023-09-20 18:30:00', '2023-09-20 19:30:00'),
  (3, '2023-10-05 20:00:00', '2023-10-05 21:00:00');

-- Insert fake data into instrument_info table
INSERT INTO instrument_info (type, brand, rental_fee)
VALUES
    ('Guitar', 'Fender', 200),
    ('Guitar', 'Yamaha', 100),
    ('Guitar', 'Taylor', 200),
    ('Bass Guitar', 'Fender', 300),
    ('Bass Guitar', 'Ibanez', 250),
    ('Piano', 'Yamaha', 250),
    ('Piano', 'Korg', 400),
    ('Trumpet', 'Bach', 300),
    ('Cello', 'Stentor', 300),
    ('Violin', 'Stentor', 400);

-- Insert fake data into instrument table
INSERT INTO instrument (instrument_info_id)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9),
    (10);

-- Insert fake data into instrument_rental table
INSERT INTO instrument_rental (student_id, instrument_id, rental_start_date, rental_end_date)
VALUES
  (1, 1, '2023-09-05', '2023-11-05'),
  (2, 2, '2023-09-15', '2023-10-15'),
  (3, 3, '2023-09-25', '2023-12-25'),
  (4, 4, '2023-10-10', '2023-11-10'),
  (5, 5, '2023-10-25', '2023-11-25'),
  (6, 6, '2023-11-20', '2023-12-20'),
  (7, 7, '2023-11-15', '2023-12-15'),
  (8, 8, '2023-11-25', '2023-12-25'),
  (9, 9, '2023-11-05', '2023-11-05'),
  (10, 10, '2023-09-30', '2023-12-30');

-- Insert fake data into pricing_scheme table
INSERT INTO pricing_scheme (student_cost, instructor_payment, skill_level, lesson_type)
VALUES
    (300, 200, 'Beginner', 'Individual'),
    (300, 200, 'Intermediate', 'Individual'),
    (400, 300, 'Advanced', 'Individual'),
    (200, 200, 'Beginner', 'Group'),
    (200, 200, 'Intermediate', 'Group'),
    (300, 300, 'Advanced', 'Group'),
    (250, 200, 'Beginner', 'Ensemble'),
    (250, 200, 'Intermediate', 'Ensemble'),
    (300, 300, 'Advanced', 'Ensemble');

-- Insert fake data into lesson table
INSERT INTO lesson (instructor_id, skill_level, lesson_type, pricing_scheme_id, time_slot_id, instrument_type, minimum_students, maximum_students, genre)
VALUES
    (3, 'Beginner', 'Ensemble', 1, 1, NULL, 5, 10, 'Classical'),
    (3, 'Advanced', 'Group', 1, 2, 'Guitar', 2, 8, NULL),
    (3, 'Intermediate', 'Individual', 1, 3, 'Piano', NULL, NULL, NULL),
    (3, 'Intermediate', 'Ensemble', 1, 4, NULL, 6, 12, 'Jazz'),
    (3, 'Advanced', 'Group', 1, 5, 'Violin', 3, 10, NULL),
    (3, 'Beginner', 'Individual', 1, 6, 'Cello', NULL, NULL, NULL),
    (3, 'Intermediate', 'Group', 1, 7, 'Bass Guitar', 4, 8, NULL),
    (3, 'Advanced', 'Individual', 1, 8, 'Bass Guitar', NULL, NULL, NULL),
    (3, 'Beginner', 'Ensemble', 1, 9, NULL, 5, 12, 'Jazz'),
    (3, 'Intermediate', 'Group', 1, 10, 'Violin', 4, 10, NULL);

-- Insert fake data into student_lesson table
INSERT INTO student_lesson (student_id, lesson_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 2),
    (7, 2),
    (8, 3),
    (9, 4),
    (10, 4),
    (11, 4),
    (12, 4),
    (13, 4),
    (14, 4),
    (15, 4),
    (16, 5),
    (17, 5),
    (18, 5),
    (19, 6),
    (20, 7),
    (21, 7),
    (22, 7),
    (23, 7),
    (24, 8),
    (25, 9),
    (26, 9),
    (27, 9),
    (1, 9),
    (2, 9),
    (3, 10),
    (4, 10),
    (5, 10),
    (6, 10);

-- Insert fake data into instrument_taught table
INSERT INTO instrument_taught (instructor_id, instrument_info_id)
VALUES
    (1, 1),
    (2, 4)
    (3, 1),
    (3, 4),
    (3, 6),
    (3, 8),
    (3, 9),
    (3, 10),
    (4, 8),
    (5, 10);
