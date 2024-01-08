-- Query 1

SELECT
    TO_CHAR(ts.start_time, 'Mon') AS Month,
    COUNT(*) AS Total,
    COUNT(CASE WHEN l.lesson_type = 'Individual' THEN 1 END) AS Individual,
    COUNT(CASE WHEN l.lesson_type = 'Group' THEN 1 END) AS Group,
    COUNT(CASE WHEN l.lesson_type = 'Ensemble' THEN 1 END) AS Ensemble
FROM
    lesson AS l
JOIN
    time_slot AS ts ON l.time_slot_id = ts.id
WHERE
    EXTRACT(YEAR FROM ts.start_time) = 2023
GROUP BY
    TO_CHAR(ts.start_time, 'Mon')
ORDER BY
    TO_CHAR(ts.start_time, 'Mon') DESC;

-- Query 2

SELECT
    sibling_count AS "No of Siblings",
    COUNT(*) AS "No of Students"
FROM (
    SELECT
        student_id,
        COUNT(DISTINCT sibling_id) AS sibling_count
    FROM (
        SELECT
            student.id AS student_id,
            sibling.student_id_1 AS sibling_id
        FROM
            student
        LEFT JOIN
            sibling ON student.id = sibling.student_id_2

        UNION ALL

        SELECT
            student.id AS student_id,
            sibling.student_id_2 AS sibling_id
        FROM
            student
        LEFT JOIN
            sibling ON student.id = sibling.student_id_1
    ) AS combined_siblings
    GROUP BY
        student_id
) AS student_siblings
GROUP BY
    sibling_count
ORDER BY
    sibling_count;

-- Query 3

SELECT
    i.id AS "Instructor Id",
    p.first_name AS "First Name",
    p.last_name AS "Last Name",
    COUNT(l.id) AS "No Of Lessons"
FROM
    instructor AS i
JOIN
    person AS p ON i.person_id = p.id
JOIN
    lesson AS l ON i.id = l.instructor_id
JOIN
    time_slot AS ts ON l.time_slot_id = ts.id
WHERE
    EXTRACT(MONTH FROM ts.start_time) = EXTRACT(MONTH FROM CURRENT_DATE)
GROUP BY
    i.id, p.first_name, p.last_name
ORDER BY
    COUNT(l.id) DESC;

--Query 4

SELECT
    TO_CHAR(ts.start_time, 'Dy') AS "Day",
    l.genre AS "Genre",
    CASE
        WHEN (l.maximum_students - COUNT(sl.lesson_id)) > 2 THEN 'Many Seats'
        WHEN (l.maximum_students - COUNT(sl.lesson_id)) BETWEEN 1 AND 2 THEN '1 or 2 seats'
        ELSE 'No seats'
    END AS "No of Free Seats"
FROM
    lesson l
JOIN time_slot ts ON l.time_slot_id = ts.id
LEFT JOIN student_lesson sl ON l.id = sl.lesson_id
WHERE
    l.lesson_type = 'Ensemble'
    AND EXTRACT(WEEK FROM ts.start_time) = EXTRACT(WEEK FROM CURRENT_DATE + INTERVAL '1 week')
GROUP BY
    TO_CHAR(ts.start_time, 'Dy'),
    l.genre,
    l.maximum_students,
    ts.start_time
ORDER BY
    EXTRACT(DOW FROM ts.start_time),
    l.genre;
