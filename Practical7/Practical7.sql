
/*--------------------------Lab 7----------------------------------*/

select * from student

select * from course

select * from offers

--a
select c.CID,count(SID) as 'No of students'
from Student s,Course c
where s.CID=c.CID
group by c.CID

--b
select c.Cname,count(SID) as 'No of students'
from Student s,Course c
where s.CID=c.CID
group by c.Cname

--c
select c.CID,c.cname,count(o.Mcode)
from offers o,course c
where c.CID=o.CID and o.Accadamic_year='Y1'
group by c.CID, c.Cname
having count(o.Mcode)>2

--d
select c.cname,o.Accadamic_year,count(o.Mcode)
from offers o,course c
where c.CID=o.CID 
group by c.CID,c.Cname, o.Accadamic_year
having count(o.Mcode)>2
order by count(o.Mcode)
