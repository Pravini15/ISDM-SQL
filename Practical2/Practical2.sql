
/*                      Labsheet 2                           */

/*Section 1........................*/
/*a*/
SELECT *
FROM Student;

/*b*/
SELECT Mname,NoOfCredits
FROM Module

/*c*/
SELECT Sname
FROM student
WHERE Sname LIKE 'A%'


/*d*/
select Sname
FROM student
WHERE dob< '1996/01/01'

/*e*/
SELECT Sname,NIC
FROM Student
WHERE Address LIKE '%Colombo%'

/*f*/
SELECT Sname
FROM Student
WHERE Sname LIKE 'K%'AND CID='DS'

/*g*/
SELECT Sname
FROM Student
WHERE CID='DS' OR CID='IT'

/*Section 2............................*/

/*a*/
SELECT *
FROM Student
ORDER BY Sname

/*b*/
SELECT *
FROM Student 
ORDER BY NIC DESC

/*c*/
SELECT * 
FROM Student
ORDER BY Sname ASC,CID DESC