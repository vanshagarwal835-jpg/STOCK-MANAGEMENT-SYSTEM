CREATE DATABASE SAMPLE
USE SAMPLE
CREATE TABLE projectmain(userid varchar(max),email varchar(max),namee varchar(max),pass varchar(max),dob varchar(max),mobile varchar(max),city varchar(max),pincode varchar(max),addres varchar(max),photo varchar(max))
select * from projectmain
create table adminlogin(userid varchar(max),pass varchar(max))
select * from adminlogin
create table stock(stkid varchar(max),stknamee varchar(max),stkprice varchar(max),stkquantity varchar(max))
select * from stock
create table buystock(stkname varchar(max),stkprice varchar(max),stkquantity varchar(max),totalprice varchar(max))
select * from buystock
alter table buystock add userid varchar(max)
alter table projectmain add amount varchar(max)