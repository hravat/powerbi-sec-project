-- master.dbo.CALCULATED_TABLE_LatestAcceptedForms definition

-- Drop table

-- DROP TABLE master.dbo.CALCULATED_TABLE_LatestAcceptedForms;

CREATE TABLE master.dbo.CALCULATED_TABLE_LatestAcceptedForms (
	[Form Code] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Latest Accepted Date] datetime2(0) NULL,
	cik nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prevrpt bigint NULL,
	[Filing Status] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fy nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fp nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- master.dbo.DIM_BALANCE_SHEET definition

-- Drop table

-- DROP TABLE master.dbo.DIM_BALANCE_SHEET;

CREATE TABLE master.dbo.DIM_BALANCE_SHEET (
	Category nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Subcategory nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[XBRL Tag] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- master.dbo.DIM_BUSINESS_ADDRESS definition

-- Drop table

-- DROP TABLE master.dbo.DIM_BUSINESS_ADDRESS;

CREATE TABLE master.dbo.DIM_BUSINESS_ADDRESS (
	bas2 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	baph nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cik bigint NULL,
	countryba nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	stprba nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cityba nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zipba nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bas1 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- master.dbo.DIM_CONSOLIDATED_BALANCE_SHEET definition

-- Drop table

-- DROP TABLE master.dbo.DIM_CONSOLIDATED_BALANCE_SHEET;

CREATE TABLE master.dbo.DIM_CONSOLIDATED_BALANCE_SHEET (
	[Balance Sheet Item] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[XBRL Tag] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Parent Balance Sheet] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Parent XBRL Tag] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Statment Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BalanceSheetPath nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BalanceSheetLevel1 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BalanceSheetLevel2 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BalanceSheetLevel3 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Column] bigint NULL,
	ConsolidatedBalanceSheet nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- master.dbo.DIM_FORM definition

-- Drop table

-- DROP TABLE master.dbo.DIM_FORM;

CREATE TABLE master.dbo.DIM_FORM (
	[Form Code] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Form Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- master.dbo.DIM_MAILING_ADDRESS definition

-- Drop table

-- DROP TABLE master.dbo.DIM_MAILING_ADDRESS;

CREATE TABLE master.dbo.DIM_MAILING_ADDRESS (
	cik bigint NULL,
	countryma nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	stprma nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cityma nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zipma nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mas1 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mas2 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- master.dbo.DIM_PREPERATION_OF_STATEMENTS definition

-- Drop table

-- DROP TABLE master.dbo.DIM_PREPERATION_OF_STATEMENTS;

CREATE TABLE master.dbo.DIM_PREPERATION_OF_STATEMENTS (
	[Source.Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adsh nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	report bigint NULL,
	line bigint NULL,
	stmt nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	inpth bigint NULL,
	rfile nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tag nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	version nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	plabel nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	negating bigint NULL,
	ColRelationship nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adsh_tag_version nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- master.dbo.DIM_REGISTRANT definition

-- Drop table

-- DROP TABLE master.dbo.DIM_REGISTRANT;

CREATE TABLE master.dbo.DIM_REGISTRANT (
	cik nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sic nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	countryinc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	stprinc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ein nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	former nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	changed nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	afs nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wksi nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- master.dbo.DIM_XBRL_TAG definition

-- Drop table

-- DROP TABLE master.dbo.DIM_XBRL_TAG;

CREATE TABLE master.dbo.DIM_XBRL_TAG (
	UpperColRelationship nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Source.Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tag nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	version nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	custom nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	abstract nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	datatype nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	iord nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	crdr nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tlabel nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	doc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ColRelationship nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- master.dbo.FACT_FILING definition

-- Drop table

-- DROP TABLE master.dbo.FACT_FILING;

CREATE TABLE master.dbo.FACT_FILING (
	adsh nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cik nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fye bigint NULL,
	[Form Code] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	period bigint NULL,
	fy nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fp nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	filed bigint NULL,
	accepted datetime2(0) NULL,
	prevrpt bigint NULL,
	detail bigint NULL,
	[instance] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nciks bigint NULL,
	aciks nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CIK_LENGTH bigint NULL,
	[Filing Status] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- master.dbo.FACT_XBRL_FILING_METRICS definition

-- Drop table

-- DROP TABLE master.dbo.FACT_XBRL_FILING_METRICS;

CREATE TABLE master.dbo.FACT_XBRL_FILING_METRICS (
	[Source.Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adsh nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tag nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	version nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ddate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	qtrs bigint NULL,
	uom nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	segments nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coreg nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	value float NULL,
	footnote nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adsh_tag_version nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ColRelationship nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FormattedDate datetime2(0) NULL
);


-- master.dbo.NavigationTable definition

-- Drop table

-- DROP TABLE master.dbo.NavigationTable;

CREATE TABLE master.dbo.NavigationTable (
	[Role] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- master.dbo.Slicer_Hierarchy definition

-- Drop table

-- DROP TABLE master.dbo.Slicer_Hierarchy;

CREATE TABLE master.dbo.Slicer_Hierarchy (
	Level1 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Level2 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);