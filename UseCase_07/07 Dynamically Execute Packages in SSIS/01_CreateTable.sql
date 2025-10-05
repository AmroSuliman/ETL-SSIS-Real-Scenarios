IF EXISTS(SELECT 1 FROM sysobjects with (nolock) WHERE ID = OBJECT_ID(N'Pkg_Details') AND type = (N'U'))
drop table Pkg_Details
go
CREATE TABLE Pkg_Details(ID INT IDENTITY, PackageFolderPath varchar(300), PackageName varchar(100), Active bit)
go

select * from Logs
--Insert package details
INSERT INTO Pkg_Details VALUES('D:\01_Personal\01-SSIS\lesson-07\07 Dynamically Execute Package\07 Dynamically Execute Package',
'ChildPkg1.dtsx',1)
INSERT INTO Pkg_Details VALUES('D:\01_Personal\01-SSIS\lesson-07\07 Dynamically Execute Package\07 Dynamically Execute Package',
'ChildPkg2.dtsx',1)
INSERT INTO Pkg_Details VALUES('D:\01_Personal\01-SSIS\lesson-07\07 Dynamically Execute Package\07 Dynamically Execute Package',
'ChildPkg3.dtsx',1)
go
select PackageFolderPath, PackageName from Pkg_Details where Active=1

CREATE TABLE Logs(
	[Id] [int] IDENTITY,
	Step [varchar](100) NULL,
	[PackageName] [varchar](200) NULL,
	
	[Dated] [datetime] NULL
)


select * from Logs

drop table Logs
