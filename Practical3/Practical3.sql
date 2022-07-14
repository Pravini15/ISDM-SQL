/*............lab 3...................*/

/*a*/
Select COUNT(SID) as NoOfStudents
from Student

/*b*/
select count(CID)
from Course

/*c*/
select count(CID) as 'Number of courses'
from Course

/*d*/
select count(Mname)
from  Module
where NoOfCredits LIKE '3'

/*e*/
select sum(C_fee)
from Course

/*f*/
select Max(C_fee)
from Course

/*g*/
select Min(C_fee)
from Course

/*h*/
select Avg(C_fee)
from Course

 
 