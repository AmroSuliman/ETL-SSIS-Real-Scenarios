create table audit_log(Id int identity, PackageName varchar(200), TableName varchar(200), RecordsInserted int,
RecordsUpdated int, Dated datetime)

---Create a config_table
create table config_table (Id int identity,TableName varchar(200),lastupdatedColumn varchar(100),lastupdatedvalue datetime)

go

insert into config_table
select ' [Person].[EmailAddress]','ModifiedDate','2015-04-15 16:33:33.123'
go 
select * from config_table

select max(lastupdatedvalue) 
from config_table
where TableName =' [Person].[EmailAddress]'

select @@SERVERNAME