If Exists(Select 1 from sysobjects where name = 'emp')
	Drop table emp
Go
If Exists(Select 1 from sysobjects where name = 'dept')
	Drop table dept
Go
Create table dept
(deptno nChar(03) constraint pk_dept_deptno primary key,
 dname nVarchar(50) not null,
 location nvarchar(50))
Go
Create table emp
(empno nChar(03) constraint pk_emp_empno primary key,
 ename nVarchar(100) not null,
 desig nVarchar(20),
 doj datetime,
 deptno nChar(03) constraint fk_emp_deptno references dept(deptno),
 salary numeric(18,2),
 comm numeric(18,2),
 mgr nChar(03) constraint fk_emp_mgr references emp(empno))
Go
Insert into dept values('101','Account','Mumbai')
Insert into dept values('102','Sales','Delhi')
Insert into dept values('103','Purchase','Mumbai')
Insert into dept values('104','R&D','Pune')
Insert into dept values('105','Production','Pune')
Go
Insert into emp values('809','Guru','Manager','08/07/1979','101',25000,null,null)
Insert into emp values('812','Krunal','Manager','02/01/1981','101',20000,null,'809')
Insert into emp values('816','Pankaj','Manager','03/02/1982','102',18000,null,'809')
Insert into emp values('821','Ajay','Manager','11/13/2001','103',16000,null,'809')
Insert into emp values('810','Niraj','Clerk','02/01/1984','101',7000,null,'812')
Insert into emp values('811','Smith','Officer','03/05/1993','101',12000,null,'812')
Insert into emp values('813','Sagun','Clerk','04/03/1996','102',6000,null,'816')
Insert into emp values('814','Subodh','Officer','03/12/1987','103',14000,null,'821')
Insert into emp values('815','Sandesh','Officer','03/10/1986','103',14000,null,'821')
Insert into emp values('817','Amit','Officer','04/22/1999','102',10000,null,'816')
Insert into emp values('818','Vishwas','Clerk','07/02/1996','101',6000,null,'812')
Insert into emp values('819','Prashant','Clerk','11/3/2001','103',7000,null,'821')
Insert into emp values('820','Suraj','Salesman','05/04/1996','102',4000,200,'816')
Insert into emp values('822','Dinoj','Salesman','01/09/1994','102',3500,1400,'816')
insert into emp values('823','Swara','Manager','08/04/1979','101',75000,null,null)
Insert into emp values('824','Niraj_','Manager','02/01/1986','101',30000,null,'809')
Insert into emp values('825','Devang','Manager','03/09/1982','102',28000,null,'809')
Insert into emp values('836','Manish','Manager','11/13/2012','103',36000,null,'809')
Insert into emp values('826','Ankur','Clerk','02/01/2001','101',27000,null,'812')
Insert into emp values('827','Poonam','Officer','03/05/2003','101',32000,null,'812')
Insert into emp values('828','Rekha','Clerk','12/03/2011','102',26000,null,'816')
Insert into emp values('829','Kamal','Officer','03/08/2006','103',24000,null,'821')
Insert into emp values('830','Jon','Officer','03/16/1989','103',34000,null,'821')
Insert into emp values('831','Ravi','Officer','04/22/2002','102',30000,null,'816')
Insert into emp values('832','Kavita','Clerk','07/09/2005','101',26000,null,'812')
Insert into emp values('833','Mangesh','Clerk','11/17/2007','103',27000,null,'821')
Insert into emp values('834','Vishal','Salesman','09/14/1999','102',14000,200,'816')
Insert into emp values('835','Ashutosh','Salesman','11/11/1999',null,15000,1400,'816')

update emp set salary = salary + 10000


