use [testdb]

create table Person (
	Id uniqueidentifier,
	Name nvarchar(255),
	BOD date,
	Gender nvarchar (255),
	Email nvarchar(255),
	GroupID uniqueidentifier
)

create table PersonGroup(
	Id uniqueidentifier,
	GroupName nvarchar(255),
)


insert into [PersonGroup] values (NewID(),'Group 1')
insert into [PersonGroup] values (NewID(),'Group 2')
insert into [PersonGroup] values (NewID(),'Group 3')

select * from [PersonGroup]


insert into [Person] values (NEWID(), 'Mike', DATEADD(day, (ABS(CHECKSUM(NEWID())) % 65530), 0),'Male',concat(LEFT(REPLACE(NEWID(), '-', ''), 10), '@gmail.com'),'A239BC6C-75E4-4F09-BF31-EFA5867FF600',FLOOR(RAND()*(10-5+1)+5),RAND()*(10-5)+5)
insert into [Person] values (NEWID(), 'Zoe', DATEADD(day, (ABS(CHECKSUM(NEWID())) % 65530), 0),'Female',concat(LEFT(REPLACE(NEWID(), '-', ''), 10), '@gmail.com'),'A239BC6C-75E4-4F09-BF31-EFA5867FF600',FLOOR(RAND()*(10-5+1)+5),RAND()*(10-5)+5)

insert into [Person] values (NEWID(), 'Doe', DATEADD(day, (ABS(CHECKSUM(NEWID())) % 65530), 0),'Male',concat(LEFT(REPLACE(NEWID(), '-', ''), 10), '@gmail.com'),'06AB8981-1D1B-4D88-A696-62853E904896',FLOOR(RAND()*(10-5+1)+5),RAND()*(10-5)+5)
insert into [Person] values (NEWID(), 'Joice', DATEADD(day, (ABS(CHECKSUM(NEWID())) % 65530), 0),'Female',concat(LEFT(REPLACE(NEWID(), '-', ''), 10), '@gmail.com'),'06AB8981-1D1B-4D88-A696-62853E904896',FLOOR(RAND()*(10-5+1)+5),RAND()*(10-5)+5)
insert into [Person] values (NEWID(), 'Michlle', DATEADD(day, (ABS(CHECKSUM(NEWID())) % 65530), 0),'Male',concat(LEFT(REPLACE(NEWID(), '-', ''), 10), '@gmail.com'),'06AB8981-1D1B-4D88-A696-62853E904896',FLOOR(RAND()*(10-5+1)+5),RAND()*(10-5)+5)
insert into [Person] values (NEWID(), 'Rose', DATEADD(day, (ABS(CHECKSUM(NEWID())) % 65530), 0),'Female',concat(LEFT(REPLACE(NEWID(), '-', ''), 10), '@gmail.com'),'06AB8981-1D1B-4D88-A696-62853E904896',FLOOR(RAND()*(10-5+1)+5),RAND()*(10-5)+5)

insert into [Person] values (NEWID(), 'Zack', DATEADD(day, (ABS(CHECKSUM(NEWID())) % 65530), 0),'Male',concat(LEFT(REPLACE(NEWID(), '-', ''), 10), '@gmail.com'),'20465804-F6A9-4875-A03D-63C085440059',FLOOR(RAND()*(10-5+1)+5),RAND()*(10-5)+5)
insert into [Person] values (NEWID(), 'Eve', DATEADD(day, (ABS(CHECKSUM(NEWID())) % 65530), 0),'Female',concat(LEFT(REPLACE(NEWID(), '-', ''), 10), '@gmail.com'),'20465804-F6A9-4875-A03D-63C085440059',FLOOR(RAND()*(10-5+1)+5),RAND()*(10-5)+5)

select * from [Person]


select g.[GroupName], p.[Name],CAST(CONVERT(Date, p.[BOD], 101)as VARCHAR) AS BOD ,p.[Email], p.[Gender], p.[Income], p.[Bonus]
from [Person] p 
left join [PersonGroup] g ON p.[GroupID] = g.[Id]

