USE [VetDB]
GO

/****** Object:  Table [dbo].[Treatement_Details]    Script Date: 20/02/2020 18:54:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Treatement_Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PetID] [int] NOT NULL,
	[TreatementDate] [date] NOT NULL,
	[TreatementCost] [money] NOT NULL,
	[Notes] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Treatement_Details] ADD  DEFAULT (getdate()) FOR [TreatementDate]
GO

ALTER TABLE [dbo].[Treatement_Details]  WITH CHECK ADD FOREIGN KEY([PetID])
REFERENCES [dbo].[Pet_Details] ([ID])
GO
