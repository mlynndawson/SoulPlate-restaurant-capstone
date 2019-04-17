USE master;
GO

IF EXISTS(select * from sys.databases where name='soulplate')
DROP DATABASE soulplate;
GO

CREATE DATABASE soulplate
GO

USE soulplate;
GO

CREATE TABLE [users] (
	[id]			int				IDENTITY (1, 1) NOT NULL,
	[username]		nvarchar(50)	NOT NULL,
	[password]		varchar(50)		NOT NULL,
	[salt]			varchar(50)		NOT NULL,
	[role]			varchar(50)		NULL,	
	[firstname]		nvarchar(50)	NULL,
	[lastname]		nvarchar(50)	NULL,
	[address1]		nvarchar(100)	NULL,
	[address2]		nvarchar(100),
	[city]			nvarchar(50)	NULL,
	[state]			nvarchar(50)	NULL,
	[postalcode]	char(5)			NULL,
	[fav01]			int,				
	[fav02]			int,
	[fav03]			int,			
	[fav04]			int,
	[fav05]			int,			
	[fav06]			int,
	[fav07]			int,				
	[fav08]			int,
	[fav09]			int,				
	[fav10]			int,

	CONSTRAINT pk_user PRIMARY KEY (id),
);