USE [VetDB]
GO

/****** Object:  Table [dbo].[Communication_Address]    Script Date: 20/02/2020 18:51:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Communication_Address](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AddressLane1] [varchar](30) NOT NULL,
	[AdressLane2] [varchar](20) NULL,
	[City] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


