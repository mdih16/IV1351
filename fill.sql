-- Insert fake data into person table
INSERT INTO person (person_number, first_name, last_name, email, phone_number, street, zip, city)
VALUES
    ('198001011234', 'John', 'Doe', 'john.doe@example.com', '555-1234', '123 Main St', '12345', 'Cityville'),
    ('197502031234', 'Jane', 'Smith', 'jane.smith@example.com', '555-5678', '456 Oak St', '56789', 'Townsville'),
    ('198712154567', 'Bob', 'Johnson', 'bob.johnson@example.com', '555-9876', '789 Pine St', '98765', 'Villagetown'),
    ('199305227890', 'Alice', 'Brown', 'alice.brown@example.com', '555-4321', '321 Elm St', '54321', 'Hamletville'),
    ('198811301234', 'Charlie', 'Williams', 'charlie.williams@example.com', '555-8765', '567 Maple St', '87654', 'Meadowtown'),
    ('197804151234', 'Eva', 'Andersson', 'eva.andersson@example.com', '555-5555', '111 Birch St', '34567', 'Swedentown'),
    ('199012101234', 'Oscar', 'Larsson', 'oscar.larsson@example.com', '555-1111', '222 Pine St', '87612', 'Stockholm');

-- Insert fake data into contact_person table
INSERT INTO contact_person (person_id)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7);

-- Insert fake data into student table
INSERT INTO student (person_id, contact_person_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7);

-- Insert fake data into sibling table
INSERT INTO sibling (student_id_1, student_id_2)
VALUES
    (1, 2),
    (2, 3),
    (3, 1),
    (4, 5),
    (5, 4),
    (6, 7),
    (7, 6);

-- Insert fake data into instructor table
INSERT INTO instructor (person_id, ensemble_instructor)
VALUES
    (1, true),
    (2, false),
    (3, true),
    (4, false),
    (5, true),
    (6, true),
    (7, false);

-- Insert fake data into time_slot table
INSERT INTO time_slot (instructor_id, start_time, end_time)
VALUES
    (1, '08:00:00', '10:00:00'),
    (2, '10:30:00', '12:30:00'),
    (3, '14:00:00', '16:00:00'),
    (4, '09:00:00', '11:00:00'),
    (5, '13:00:00', '15:00:00'),
    (6, '16:30:00', '18:30:00'),
    (7, '11:30:00', '13:30:00');

-- Insert fake data into instrument_info table
INSERT INTO instrument_info (type, brand)
VALUES
    ('String', 'BrandX'),
    ('Brass', 'BrandY'),
    ('Percussion', 'BrandZ'),
    ('Woodwind', 'BrandW'),
    ('Electronic', 'BrandE'),
    ('String', 'BrandA'),
    ('Brass', 'BrandB');

-- Insert fake data into instrument table
INSERT INTO instrument (instrument_info_id)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7);

-- Insert fake data into instrument_rental table
INSERT INTO instrument_rental (instrument_id, rental_start_date, rental_end_date, rental_fee)
VALUES
    (1, '2023-01-01', '2023-02-01', 50.00),
    (2, '2023-03-01', '2023-04-01', 75.00),
    (3, '2023-05-01', '2023-06-01', 100.00),
    (4, '2023-02-15', '2023-03-15', 60.00),
    (5, '2023-04-15', '2023-05-15', 90.00),
    (6, '2023-06-15', '2023-07-15', 120.00),
    (7, '2023-03-15', '2023-04-15', 70.00);

-- Insert fake data into pricing_scheme table
INSERT INTO pricing_scheme (student_cost, instructor_payment, skill_level, lesson_type)
VALUES
    (30.00, 20.00, 'Beginner', 'Individual'),
    (40.00, 30.00, 'Intermediate', 'Group'),
    (50.00, 40.00, 'Advanced', 'Ensemble'),
    (35.00, 25.00, 'Beginner', 'Group'),
    (45.00, 35.00, 'Intermediate', 'Ensemble'),
    (55.00, 45.00, 'Advanced', 'Individual'),
    (60.00, 50.00, 'Advanced', 'Group');

-- Insert fake data into lesson table
INSERT INTO lesson (instructor_id, skill_level, lesson_type, pricing_scheme_id, time_slot_id, instrument_type, minimum_students, maximum_students, genre)
VALUES
    (1, 'Beginner', 'Individual', 1, 1, 'Piano', 1, 1, 'Classical'),
    (2, 'Intermediate', 'Group', 2, 2, 'Trumpet', 2, 5, 'Jazz'),
    (3, 'Advanced', 'Ensemble', 3, 3, 'Drums', 5, 10, 'Rock'),
    (4, 'Beginner', 'Group', 4, 4, 'Flute', 3, 8, 'Classical'),
    (5, 'Intermediate', 'Ensemble', 5, 5, 'Synthesizer', 4, 6, 'Electronic'),
    (6, 'Advanced', 'Individual', 6, 6, 'Violin', 1, 1, 'Classical'),
    (7, 'Intermediate', 'Group', 7, 7, 'Saxophone', 4, 6, 'Jazz');

-- Insert fake data into student_lesson table
INSERT INTO student_lesson (student_id, lesson_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7);

-- Insert fake data into instrument_taught table
INSERT INTO instrument_taught (instructor_id, instrument_info_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7);

