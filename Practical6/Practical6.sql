/*..................................Labsheet 6....................................*/

select *
from student

select *
from course

select*
from module

select * 
from offers
/*a*/
select s.SID,s.Sname,c.Cname
from student s,course c
where s.CID=c.CID

/*b*/
select o.CID, m.mname
from module m,offers o
where m.Mcode=o.Mcode

/*c*/
select c.cname,m.mname
from course c,module m,offers o
where o.CID=c.CID and o.Mcode=m.Mcode


/*d*/
select s.SID,s.Sname
from Student s,Course c
where c.CID= s.CID and c.C_fee> 100000

/*e*/
select m.Mname
from module m,offers o,course c
where o.Mcode=m.Mcode and o.CID=c.CID and o.Accadamic_year='Y1' and c.Cname='Infromaton Technology'