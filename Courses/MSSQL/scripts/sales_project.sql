if exists(select 1 from sysobjects where name='salesitem')
	drop table salesitem
Go
if exists(select 1 from sysobjects where name='sales')
	drop table sales
Go
if exists(select 1 from sysobjects where name='salesman')
	drop table salesman
Go
if exists(select 1 from sysobjects where name='customer')
	drop table customer
Go
if exists(select 1 from sysobjects where name='product')
	drop table product
Go
create table product
(sProductId nchar(04) constraint pk_product_sproductid primary key,
 sName nvarchar(20) not null constraint uq_product_sname unique,
 nCostRate numeric(12,2))
Go
create table customer
(sCustomerId nchar(04) constraint pk_customer_scustomerid primary key,
 sName nvarchar(20) not null constraint uq_customer_sname unique,
 sAddress1 nVarchar(50),
 sAddress2 nVarchar(50),
 sPhoneNo nVarchar(15))
Go
create table salesman
(sSalesManId nchar(03) constraint pk_salesman_ssalesmanid primary key,
 sName nvarchar(20) not null constraint uq_salesman_sname unique,
 nCommision numeric(12,2)
)
Go
create table sales
(sSalesId nchar(03) constraint pk_sales_nsalesid primary key,
 dtSales date not null,
 sCustomerIDFK nchar(04) not null constraint fk_sales_scustomeridfk references customer(sCustomerId),
 nGrossAmount numeric(14,2) not null,
 nDiscount numeric(12,2),
 nNetAmount numeric(14,2) not null,
 sSalesmanIDFK nchar(03) constraint fk_sales_ssalesmanidfk references salesman(sSalesmanId))
 Go
 create table salesitem
 (sSalesitem nChar(04) constraint pk_salesitem_ssalesitemid primary key,
  sSalesIDFK nChar(03) constraint fk_salesitem_ssalesidfk references sales(sSalesId),
  sProductIDFK nChar(04) constraint fk_salesitem_sproductidfk references product(sProductId),
  nSalesRate numeric(12,2) not null,
  nQty numeric(5) not null)
  Go
Insert into product(sProductId,sName,nCostRate) values('P001','Monitor',8000)
Insert into product(sProductId,sName,nCostRate) values('P002','MotherBoard',12000)
Insert into product(sProductId,sName,nCostRate) values('P003','CD Writer',4800)
Insert into product(sProductId,sName,nCostRate) values('P004','Power Supply',2500)
Insert into product(sProductId,sName,nCostRate) values('P005','Harddisk',7600)
Go
Insert into customer(sCustomerId,sName,sAddress1,sAddress2,sPhoneNo) values('C001','Sigma Electronics','S.V.Road','Bandra(E)','5678956')
Insert into customer(sCustomerId,sName,sAddress1,sAddress2,sPhoneNo) values('C002','P.R.Technology','Nirmal Nagar','Mulund(W)','5328967')
Insert into customer(sCustomerId,sName,sAddress1,sAddress2,sPhoneNo) values('C003','Sai Computers','L.B.S.Marg','Ghatkopar(W)','4467893')
Go
Insert into salesman(sSalesManId,sName,nCommision) values('S01','Anil Shah',5)
Insert into salesman(sSalesManId,sName,nCommision) values('S02','Raj Thakur',8.5)
Go
insert into sales(sSalesID,dtSales,sCustomerIDFK,nGrossAmount,nDiscount,nNetAmount,sSalesmanIDFK) values('101','12-02-2005','C001',50500,2000,48500,'S01')
insert into sales(sSalesID,dtSales,sCustomerIDFK,nGrossAmount,nDiscount,nNetAmount,sSalesmanIDFK) values('102','09-03-2005','C002',52000,1500,50500,'S01')
insert into sales(sSalesID,dtSales,sCustomerIDFK,nGrossAmount,nDiscount,nNetAmount,sSalesmanIDFK) values('103','03-22-2005','C001',50000,Null,50000,Null)
insert into sales(sSalesID,dtSales,sCustomerIDFK,nGrossAmount,nDiscount,nNetAmount,sSalesmanIDFK) values('104','03-25-2005','C003',81400,4000,77400,'S02')
Go
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1001','101','P001',9000,2)
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1002','101','P003',5500,3)
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1003','101','P004',3000,1)
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1004','101','P002',13000,1)
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1005','102','P003',6000,3)
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1006','102','P005',8500,4)
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1007','103','P001',10000,5)
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1008','104','P005',8000,2)
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1009','104','P003',5300,3)
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1010','104','P002',12500,2)
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1011','104','P001',8500,1)
Insert into salesitem(sSalesItem,sSalesIDFK,sProductIDFK,nSalesRate,nQty) values('1012','104','P004',3200,5)



 