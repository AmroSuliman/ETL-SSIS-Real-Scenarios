create table FileNames(Id int identity, FileNames varchar(1000))
go
insert into FileNames
select 'TestData_1.csv'
union 
select 'TestData_2.csv'

select FileNames from FileNames

Select * From  [dbo].[Country]
ShouldLoadtheFile
drop table country
Select @@SERVERNAME

Select * From Country