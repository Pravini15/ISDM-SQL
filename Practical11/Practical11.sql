-----------------------Labsheet 11-------------------------------

select *
from Student

select CID
from student
where Sname = 'Sampath'

select Sname 
from Student
where CID= (select CID
            from student
            where Sname = 'Sampath')


select *
from module

select NoOfCredits
from Module
where Mcode= 'IE3051'

---1
select Mname
from Module
where NoOfCredits = (select NoOfCredits
                     from Module
					 where Mcode='IE3051')

---2

select *
from Course

select Cname
from Course
where C_fee = (select max(C_fee)
               from Course
			   )

---3

select Mcode,Mname,NoOfCredits
from Module
where NoOfCredits < (select NoOfCredits
                     from Module
					 where Mname= 'Fundamentals of Data Mining')
---4

select c.Cname, m.NoOfCredits
from Course c, Module m, Offers o
where c.CID= o.CID and m.Mcode=o.Mcode and NoOfCredits= (select max(NoOfCredits)
                                                 from Module)
---5

select *
from Offers

select * 
from course

select *
from module



select count(o.Mcode)
from Course c, offers o
where c.CID= o.CID and c.Cname = 'Software Engineering' and o.Accadamic_year='Y4'

select c.Cname
from Course c, Offers o
where c.CID = o.CID and o.Accadamic_year='Y4'
group by o.CID, c.Cname
having count(o.Mcode)> (select count(o.Mcode)
                        from Course c, offers o
                        where c.CID= o.CID and c.Cname = 'Software Engineering' and o.Accadamic_year='Y4')