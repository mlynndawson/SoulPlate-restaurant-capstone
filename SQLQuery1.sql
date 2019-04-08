USE master;
GO

IF EXISTS(select * from sys.databases where name='soulplate')
DROP DATABASE soulplate;
GO

CREATE DATABASE soulplate
GO

USE soulplate;
GO

CREATE TABLE [address] (
	[id]			int				IDENTITY (1, 1) NOT NULL,
	[address1]		nvarchar(100)	NOT NULL,
	[address2]		nvarchar(100),
	[city]			nvarchar(50)	NOT NULL,
	[state]			nvarchar(50)	NOT NULL,
	[postalcode]	char(5)			NOT NULL,
	CONSTRAINT pk_address PRIMARY KEY (id),
);

CREATE TABLE [users] (
	[id]			int				IDENTITY (1, 1) NOT NULL,
	[username]		nvarchar(50)	NOT NULL,
	[password]		varchar(50)		NOT NULL,
	[salt]			varchar(50)		NOT NULL,
	[role]			varchar(50)		NULL,	
	[firstname]		nvarchar(50)	NULL,
	[lastname]		nvarchar(50)	NULL,
	[addressid]		int				NULL,
	
	CONSTRAINT pk_user PRIMARY KEY (id),
	CONSTRAINT fk_address FOREIGN KEY (addressid) references address (id)

);


