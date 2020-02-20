USE [VetDB]
GO

/****** Object:  Table [dbo].[Owner]    Script Date: 20/02/2020 18:52:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Owner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[MobileNumber] [nvarchar](20) NOT NULL,
	[AddressID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Owner]  WITH CHECK ADD FOREIGN KEY([AddressID])
REFERENCES [dbo].[Communication_Address] ([ID])
GO


