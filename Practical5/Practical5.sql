/*..................Labsheet 5.........................*/

select *
from offers

select CID, count(Mcode)
from offers
where semester=1
group by CID
having count(Mcode)>2

/*.................section 2...........................*/

/*a*/
select CID, count(SID)
from student
group by CID
having count(SID)<10

/*b*/
select CID,count(Mcode)
from offers
group by CID
having count(Mcode)>3
order by count(Mcode)ASC

/*c*/
select CID, Accadamic_year,count(Mcode)
from offers
group by CID,Accadamic_year
having count(Mcode)<10

/*d*/
select CID,count(Mcode)
from offers
where accadamic_year='Y3'
group by CID
having count(Mcode)>2

