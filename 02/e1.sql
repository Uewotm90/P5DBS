SELECT sid,lastname
FROM student
WHERE
    (
    SELECT
          );


WITH groupMembers AS (
    SELECT studygroup.gid, COUNT(DISTINCT student.sid)
           FROM student, studygroup,member
           GROUP BY studygroup.gid
)
SELECT *
FROM groupMembers;

SELECT firstname, student.sid
FROM student,member,studygroup
WHERE (SELECT SUM(student.sid) FROM member);

SELECT * FROM studygroup, member
         WHERE member.gid = studygroup.gid;
SELECT student.sid,firstname,studygroup.gid
FROM student,member,studygroup
WHERE ;

SELECT *
FROM member, studygroup
WHERE studygroup.gid = 1;

SELECT * FROM studygroup WHERE gid = 1;

SELECT sid FROM member WHERE gid = 1;

SELECT Distinct student.sid, firstname, lastname FROM student,member WHERE student.sid IN (SELECT sid FROM member WHERE gid = 1);