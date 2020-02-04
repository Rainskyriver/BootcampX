SELECT assignments.day, COUNT(*), SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY assignments.day