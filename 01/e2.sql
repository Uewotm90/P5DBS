--Translate the following queries into equivalent SQL statements that run on the tables created above.
SELECT *
FROM student
    WHERE fname = 'Helle';

SELECT *
FROM student
    WHERE lname LIKE '%sen';

SELECT fname, lname
FROM tutor
WHERE issenior = true;

--virker ikke
SELECT *
FROM studygroup
WHERE weekday = 'Wednesday' OR 'Friday';

SELECT fname, lname
FROM member, student
WHERE (
    SELECT *
    FROM studygroup
    WHERE weekday = 'Wednesday' OR 'Friday'
)