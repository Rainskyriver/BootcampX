SELECT cohorts.name AS name, AVG(created_at - started_at) AS average_assistance_time
FROM assistance_requests
JOIN cohorts ON cohorts.id = cohorts_id
JOIN students ON students.id = assistance_requests.student_id
GROUP BY cohorts.name
ORDER BY average_assistance_time