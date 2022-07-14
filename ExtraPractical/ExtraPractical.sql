/*-----------------------------Extra Lab-----------------------------------*/

create table Department (
    dno int,
	dname varchar(50),
	constraint dept_pk primary key(dno)
);

create table Project(
     pno int,
	 pname varchar(30),
	 location varchar(50),
	 constraint pro_pk primary key(pno)
);

create table Employee(
     eno integer,
	 NIC varchar(10),
	 ename varchar(50),
	 address varchar(50),
	 dnumber int,
	 constraint Emp_pk primary key(eno),
	 constraint Emp_fk foreign key(dnumber) references Department(dno)
);

create table Work_on (
    eno int,
	pno int,
	hired_date DATETIME,
	hours int,
	constraint work_pk primary key(eno,pno) ,
	constraint work_fk1 foreign key(eno) references Employee(eno),
	constraint work_fk2 foreign key(pno) references Project(pno)
);

select *
from employee

select *
from Department

select *
from Work_on

select *
from project

drop table work_on
drop table employee
drop table department
drop table project


alter table employee
add constraint eno_chk check(eno Like '[0-9][0-9][0-9]')

alter table employee
add constraint NIC_chk check(NIC Like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][V-v]')

Alter table employee
alter column ename varchar(50) not null;

alter table Work_on
add constraint  hrs_chk check(hours>0);

alter table Department
add constraint dname_chk check(dname in ('Headquarters','Administration','Research'))

insert into Department values (1,'Headquarters');
insert into Department values (4,'Administration');
insert into Department values (5,'Reaserch');

insert into employee values(100, '901250087V','Samith,John B', '731 Fondren,Houston',5);
insert into employee values(101, '895290452V','Wrong,Franklin T', '638 Voss,Houston',5);
insert into employee values(102, '923859070V','Zelaya, Alicia J', '333 Castle,Spring',4);
insert into employee values(103, '918257988V','Wallace, Jennifer S', '291 Berry, Bellaria',4);
insert into employee values(104, '904850045V','Narayan, Remesh K', '975 Fire Oak, Humble',5);
insert into employee values(105, '889950600V','English, Joyce A', '845 Rice, Houston',1);
insert into employee values(106, '915850123V','Jabbar, Ahmad V', '111 Dallas, Houston',1);

insert into project values( 1, 'Road construction', 'Bellaire');
insert into project values( 2, 'Power plant', 'Sugarland');
insert into project values( 3, 'Reproduction', 'Houston');
insert into project values( 4, 'Recycling', 'Stafford')

insert into work_on values( 100, 1, 12/04/2011, 12);
insert into work_on values( 100, 2, 25/02/2011, 1 );
insert into work_on values( 100, 3, 15/05/2011, 2);
insert into work_on values( 101, 1, 02/06/2011, 50 );
insert into work_on values( 102, 4, 08/06/2011, 5);
insert into work_on values( 103, 3, 12/07/2011, 3);
insert into work_on values( 104, 2, 20/07/2011, 40);
insert into work_on values( 105, 3, 18/05/2011, 1 );
insert into work_on values( 105, 1, 01/07/2011, 1);
insert into work_on values( 106, 4, 27/06/2011, 1);


delete from employee
where ename = 'Wallace, Jennifer S'

delete from work_on
where eno= 103

select *
from work_on


update project
set pname='Water Recycling'
where pno=4

select *
from project