SELECT courses.title AS course_title
FROM courses
INNER JOIN enrollments ON enrollments.course_id = courses.id
GROUP BY courses.id, courses.title
HAVING COUNT(enrollments.student_id) > (
    SELECT AVG(course_count)
    FROM (
        SELECT COUNT(*) AS course_count
        FROM enrollments
        GROUP BY course_id
    ) AS counts
)
ORDER BY course_title ASC;
