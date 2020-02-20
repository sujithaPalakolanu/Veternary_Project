USE [VetDB]
GO

/****** Object:  Table [dbo].[Pet_Details]    Script Date: 20/02/2020 18:52:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Pet_Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PetName] [varchar](20) NOT NULL,
	[BreedName] [varchar](20) NOT NULL,
	[Pedegree] [bit] NULL,
	[DateOfBirth] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Pet_Details] ADD  DEFAULT ((0)) FOR [Pedegree]
GO


