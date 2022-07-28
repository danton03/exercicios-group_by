--Questão 1:
SELECT COUNT(experiences."endDate") AS "currentExperienses" 
FROM experiences;

--Questão 2:
SELECT "userId" AS "id", COUNT(educations) AS educations 
FROM educations
GROUP BY "userId"
ORDER BY "userId" ASC;

--Questão 3:
SELECT users.name AS writer, COUNT(testimonials) AS "testimonialCount" 
FROM testimonials
JOIN users
ON users.id = testimonials."writerId" AND users.id = 435
GROUP BY users.name;

--Questão 4:
SELECT MAX(salary) AS "maximumSalary", roles.name AS "role" 
FROM jobs
JOIN roles
ON roles.id = jobs."roleId" AND active = true
GROUP BY roles.name
ORDER BY "maximumSalary" ASC;