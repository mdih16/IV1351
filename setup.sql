-- Person Table
CREATE TABLE person (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    person_number VARCHAR(100) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL,
    zip VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL
);

-- Contact Person Table
CREATE TABLE contact_person (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    person_id INT REFERENCES person(id) NOT NULL
);

-- Student Table
CREATE TABLE student (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    person_id INT REFERENCES person(id) NOT NULL,
    contact_person_id INT REFERENCES contact_person(id) NOT NULL
);

-- Sibling Table
CREATE TABLE sibling (
    student_id_1 INT REFERENCES student(id) NOT NULL,
    student_id_2 INT REFERENCES student(id) NOT NULL,
    PRIMARY KEY (student_id_1, student_id_2)
);

-- Instructor Table
CREATE TABLE instructor (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    person_id INT REFERENCES person(id) NOT NULL,
    ensemble_instructor BOOLEAN NOT NULL
);

-- Time Slot Table
CREATE TABLE time_slot (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    instructor_id INT REFERENCES instructor(id) NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL
);

-- Instrument Info Table
CREATE TABLE instrument_info (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    type VARCHAR(100) NOT NULL,
    brand VARCHAR(100)
);

-- Instrument Table
CREATE TABLE instrument (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    instrument_info_id INT REFERENCES instrument_info(id) NOT NULL
);

-- Instrument Rental Table
CREATE TABLE instrument_rental (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    instrument_id INT REFERENCES instrument(id) NOT NULL,
    rental_start_date DATE NOT NULL,
    rental_end_date DATE NOT NULL,
    rental_fee DECIMAL(10, 2) NOT NULL
);

-- Pricing Scheme Table
CREATE TABLE pricing_scheme (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    student_cost DECIMAL(10, 2) NOT NULL,
    instructor_payment DECIMAL(10, 2) NOT NULL,
    skill_level VARCHAR(100) NOT NULL,
    lesson_type VARCHAR(100) NOT NULL
);

-- Lesson Table
CREATE TABLE lesson (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    instructor_id INT REFERENCES instructor(id) NOT NULL,
    skill_level VARCHAR(100) NOT NULL,
    lesson_type VARCHAR(100) NOT NULL,
    pricing_scheme_id INT REFERENCES pricing_scheme(id) NOT NULL,
    time_slot_id INT REFERENCES time_slot(id) NOT NULL,
    instrument_type VARCHAR(100),
    minimum_students INT,
    maximum_students INT,
    genre VARCHAR(100)
);

-- Student Lesson Table
CREATE TABLE student_lesson (
    student_id INT REFERENCES student(id) NOT NULL,
    lesson_id INT REFERENCES lesson(id) NOT NULL,
    PRIMARY KEY (student_id, lesson_id)
);

-- Instrument Taught Table
CREATE TABLE instrument_taught (
    instructor_id INT REFERENCES instructor(id) NOT NULL,
    instrument_info_id INT REFERENCES instrument_info(id) NOT NULL,
    PRIMARY KEY (instructor_id, instrument_info_id)
);

