
/*------------------------Labsheet 12----------------------------*/



SELECT *
from Course

Select *
from Student

Select *
from Offers

Select * 
from Module

---1

Select Cname
from Course
Where C_fee IN (Select Max(c_fee)
                   from Course)
---2				

Select m.Mname
from Module m, Course c, Offers o
Where c.CID=o.CID AND o.Mcode= m.Mcode AND c.Cname='Infromation Technology' AND m.Mcode= ANY (Select m.Mcode
																				 from Module m, Course c,Offers o
																			     Where c.CID=o.CID AND o.Mcode= m.Mcode AND c.Cname='Software Engineering')


---3
											 
Select m.Mname
from Course c , Module m , Offers o
where c.CID = o.CID and o.Mcode = m.Mcode and c.Cname = 'Software Engineering' and m.Mname != any(select m.Mname
																									from Course c , Module m , Offers o
																									where c.CID = o.CID and o.Mcode = m.Mcode and c.Cname='Infromaton Technology'
																									)