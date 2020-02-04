--total cohort assistance duration
SELECT cohorts.name as cohort, SUM(completed_at - started_at) AS total_duration
FROM assistance_reuqests
JOIN cohorts ON cohorts.id = cohort_id
JOIN students ON students.id = student_id
GROUP BY cohorts.name
ORDER BY total_duration;