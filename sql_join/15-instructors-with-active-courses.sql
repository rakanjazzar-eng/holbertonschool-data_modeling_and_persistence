SELECT name AS instructor_name
FROM instructors
WHERE id IN (
    SELECT courses.instructor_id
    FROM courses
    INNER JOIN registrations ON registrations.course_id = courses.id
)
ORDER BY instructor_name ASC;
