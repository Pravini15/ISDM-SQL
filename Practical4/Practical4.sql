/*...............Labsheet 4...........................*/

select *
from student

select CID,count(SID)
from student
group by CID

/*.............a.......................*/

select CID,count(Mcode)
from Offers
group by CID

/*..............b.......................*/
select CID,count(SID) as NumberOfStudents
from student
group by CID

/*..............c........................*/
select CID,Accadamic_year,count(Mcode)
from offers
group by CID,Accadamic_year

/*..............d........................*/
select CID, Accadamic_year,count(Mcode)
from offers
where semester=2
group by CID, Accadamic_year

/*..............e.........................*/
select CID, Accadamic_year,count(Mcode)
from offers
where semester=2
group by CID, Accadamic_year
order by CID desc

