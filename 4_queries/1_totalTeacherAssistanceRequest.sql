SELECT name, count(assistance_requests.id) AS total_assistances
FROM assistance_requests
JOIN teachers  ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP by name 