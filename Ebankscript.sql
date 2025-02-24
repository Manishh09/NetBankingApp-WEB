USE [EBanking]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 7/3/2020 5:44:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountsUId] [uniqueidentifier] NOT NULL,
	[AccountsId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CustomerUId] [uniqueidentifier] NULL,
	[RowStatusUId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountsUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 7/3/2020 5:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[BankUId] [uniqueidentifier] NOT NULL,
	[BankId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[RowStatusUId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[BankUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustAcctAssociation]    Script Date: 7/3/2020 5:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustAcctAssociation](
	[CustAcctAssociationUId] [uniqueidentifier] NOT NULL,
	[CustAcctAssociationId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Balance] [bigint] NULL,
	[OpenedOn] [datetime] NOT NULL,
	[ClosedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CustomerUId] [uniqueidentifier] NULL,
	[AccountsUId] [uniqueidentifier] NULL,
	[RowStatusUId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustAcctAssociationUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/3/2020 5:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerUId] [uniqueidentifier] NOT NULL,
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[RowStatusUId] [uniqueidentifier] NULL,
	[EmailId] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDetails]    Script Date: 7/3/2020 5:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDetails](
	[CustomerDetailsUId] [uniqueidentifier] NOT NULL,
	[CustomerDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CustomerUId] [uniqueidentifier] NULL,
	[RowStatusUId] [uniqueidentifier] NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Mobile] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerDetailsUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 7/3/2020 5:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[NotificationUId] [uniqueidentifier] NOT NULL,
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[customerUId] [uniqueidentifier] NULL,
	[Message] [nvarchar](100) NULL,
	[createdby] [nvarchar](100) NULL,
	[createdOn] [datetime] NOT NULL,
	[modifiedBy] [nvarchar](100) NULL,
	[modifiedOn] [datetime] NOT NULL,
	[RowstatusUid] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RowStatus]    Script Date: 7/3/2020 5:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RowStatus](
	[RowStatusUId] [uniqueidentifier] NOT NULL,
	[RowStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RowStatusUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionData]    Script Date: 7/3/2020 5:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionData](
	[TransactionUId] [uniqueidentifier] NOT NULL,
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Amount] [bigint] NULL,
	[IsSuccess] [bit] NOT NULL,
	[Time] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CustAcctAssociationUId] [uniqueidentifier] NULL,
	[CustomerUId] [uniqueidentifier] NULL,
	[BankUId] [uniqueidentifier] NULL,
	[RowStatusUId] [uniqueidentifier] NULL,
	[TransactionTypeUId] [uniqueidentifier] NULL,
	[TransactorAcctAssociationUid] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionType]    Script Date: 7/3/2020 5:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionType](
	[TransactionTypeUId] [uniqueidentifier] NOT NULL,
	[TransactionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[RowStatusUId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionTypeUId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT (newsequentialid()) FOR [AccountsUId]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Accounts] ADD  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Bank] ADD  DEFAULT (newsequentialid()) FOR [BankUId]
GO
ALTER TABLE [dbo].[Bank] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Bank] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Bank] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Bank] ADD  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[CustAcctAssociation] ADD  DEFAULT (newsequentialid()) FOR [CustAcctAssociationUId]
GO
ALTER TABLE [dbo].[CustAcctAssociation] ADD  DEFAULT (getutcdate()) FOR [OpenedOn]
GO
ALTER TABLE [dbo].[CustAcctAssociation] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[CustAcctAssociation] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CustAcctAssociation] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[CustAcctAssociation] ADD  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (newsequentialid()) FOR [CustomerUId]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[CustomerDetails] ADD  DEFAULT (newsequentialid()) FOR [CustomerDetailsUId]
GO
ALTER TABLE [dbo].[CustomerDetails] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[CustomerDetails] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CustomerDetails] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[CustomerDetails] ADD  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Notification] ADD  DEFAULT (newsequentialid()) FOR [NotificationUId]
GO
ALTER TABLE [dbo].[Notification] ADD  DEFAULT ('SYSTEM') FOR [createdby]
GO
ALTER TABLE [dbo].[Notification] ADD  DEFAULT (getutcdate()) FOR [createdOn]
GO
ALTER TABLE [dbo].[Notification] ADD  DEFAULT ('SYSTEM') FOR [modifiedBy]
GO
ALTER TABLE [dbo].[Notification] ADD  DEFAULT (getutcdate()) FOR [modifiedOn]
GO
ALTER TABLE [dbo].[RowStatus] ADD  DEFAULT (newsequentialid()) FOR [RowStatusUId]
GO
ALTER TABLE [dbo].[RowStatus] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[RowStatus] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[RowStatus] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[RowStatus] ADD  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[TransactionData] ADD  DEFAULT (newsequentialid()) FOR [TransactionUId]
GO
ALTER TABLE [dbo].[TransactionData] ADD  DEFAULT (getutcdate()) FOR [Time]
GO
ALTER TABLE [dbo].[TransactionData] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[TransactionData] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[TransactionData] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[TransactionData] ADD  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[TransactionType] ADD  DEFAULT (newsequentialid()) FOR [TransactionTypeUId]
GO
ALTER TABLE [dbo].[TransactionType] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[TransactionType] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[TransactionType] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[TransactionType] ADD  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD FOREIGN KEY([CustomerUId])
REFERENCES [dbo].[Customer] ([CustomerUId])
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD FOREIGN KEY([RowStatusUId])
REFERENCES [dbo].[RowStatus] ([RowStatusUId])
GO
ALTER TABLE [dbo].[Bank]  WITH CHECK ADD FOREIGN KEY([RowStatusUId])
REFERENCES [dbo].[RowStatus] ([RowStatusUId])
GO
ALTER TABLE [dbo].[CustAcctAssociation]  WITH CHECK ADD FOREIGN KEY([AccountsUId])
REFERENCES [dbo].[Accounts] ([AccountsUId])
GO
ALTER TABLE [dbo].[CustAcctAssociation]  WITH CHECK ADD FOREIGN KEY([CustomerUId])
REFERENCES [dbo].[Customer] ([CustomerUId])
GO
ALTER TABLE [dbo].[CustAcctAssociation]  WITH CHECK ADD FOREIGN KEY([RowStatusUId])
REFERENCES [dbo].[RowStatus] ([RowStatusUId])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([RowStatusUId])
REFERENCES [dbo].[RowStatus] ([RowStatusUId])
GO
ALTER TABLE [dbo].[CustomerDetails]  WITH CHECK ADD FOREIGN KEY([CustomerUId])
REFERENCES [dbo].[Customer] ([CustomerUId])
GO
ALTER TABLE [dbo].[CustomerDetails]  WITH CHECK ADD FOREIGN KEY([RowStatusUId])
REFERENCES [dbo].[RowStatus] ([RowStatusUId])
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD FOREIGN KEY([customerUId])
REFERENCES [dbo].[Customer] ([CustomerUId])
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD FOREIGN KEY([RowstatusUid])
REFERENCES [dbo].[RowStatus] ([RowStatusUId])
GO
ALTER TABLE [dbo].[TransactionData]  WITH CHECK ADD FOREIGN KEY([BankUId])
REFERENCES [dbo].[Bank] ([BankUId])
GO
ALTER TABLE [dbo].[TransactionData]  WITH CHECK ADD FOREIGN KEY([CustAcctAssociationUId])
REFERENCES [dbo].[CustAcctAssociation] ([CustAcctAssociationUId])
GO
ALTER TABLE [dbo].[TransactionData]  WITH CHECK ADD FOREIGN KEY([CustomerUId])
REFERENCES [dbo].[Customer] ([CustomerUId])
GO
ALTER TABLE [dbo].[TransactionData]  WITH CHECK ADD FOREIGN KEY([RowStatusUId])
REFERENCES [dbo].[RowStatus] ([RowStatusUId])
GO
ALTER TABLE [dbo].[TransactionData]  WITH CHECK ADD FOREIGN KEY([TransactionTypeUId])
REFERENCES [dbo].[TransactionType] ([TransactionTypeUId])
GO
ALTER TABLE [dbo].[TransactionType]  WITH CHECK ADD FOREIGN KEY([RowStatusUId])
REFERENCES [dbo].[RowStatus] ([RowStatusUId])
GO
