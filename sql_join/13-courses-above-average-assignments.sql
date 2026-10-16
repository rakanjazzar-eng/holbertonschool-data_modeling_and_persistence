SELECT courses.title AS course_title
FROM courses
LEFT JOIN assignments ON assignments.course_id = courses.id
GROUP BY courses.id, courses.title
HAVING COUNT(assignments.id) > (
    SELECT AVG(assignment_count)
    FROM (
        SELECT COUNT(assignments.id) AS assignment_count
        FROM courses
        LEFT JOIN assignments ON assignments.course_id = courses.id
        GROUP BY courses.id
    ) AS counts
)
ORDER BY course_title ASC;
