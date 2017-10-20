/* Microsoft SQL Server - Scripting			*/
/* Server: LOGIC					*/
/* Database: FlockBook					*/
/* Creation Date 04.04.02 17:06:00 			*/

use flockbook
if exists (select * from sysobjects where id = object_id(N'[dbo].[persons]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[persons]
GO

CREATE TABLE [dbo].[persons] (
	[person_id] [char] (6) NOT NULL ,
	[NameLast] [char] (10) NULL 
) ON [PRIMARY]
GO

