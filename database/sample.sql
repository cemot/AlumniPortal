CREATE TABLE [dbo].[OldRegister] (
    [Name]          VARCHAR (25) NOT NULL,
    [Address]       VARCHAR (50) NOT NULL,
    [Register No]   NCHAR (15)   NOT NULL,
    [Joining Date]  DATE NOT NULL,
    [UserName]      VARCHAR (25) NOT NULL,
    [Password]      VARCHAR (25) NOT NULL,
    [Email ID]      VARCHAR (50) NOT NULL,
    [DOB]           VARCHAR (25) NOT NULL,
    [Contact No]    NCHAR (15)   NOT NULL,
    [Gender]        VARCHAR (6)  NOT NULL,
    [Qualification] VARCHAR (20) NOT NULL,
    [Works At]      VARCHAR (30) NULL,
    [Designation]   VARCHAR (40) NULL,
    [Register Date] VARCHAR (20) NOT NULL,
    [Picture]       VARCHAR (50) NULL,
    [status]        VARCHAR (5)  NOT NULL
);

