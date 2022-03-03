DROP TABLE IF EXISTS indexData;

CREATE TABLE indexData (
	IndexName varchar(10),
	DT date,
	OpenPrice float,
	High float,
	Low float,
	ClosePrice float,
	AdjClose float,
	Volume int,
	FOREIGN KEY (IndexName) REFERENCES indexInfo(IndexName),
	CONSTRAINT IndexName_DT PRIMARY KEY (IndexName, DT)
);

CREATE TABLE indexInfo(
	Region varchar(40),
	Exchange varchar(40),
	IndexName varchar(10),
	Currency varchar(3),
	PRIMARY KEY (IndexName)
);

CREATE TABLE indexProcessed(
	IndexName varchar(10),
	DT date,
	OpenPrice float,
	High float,
	Low float,
	ClosePrice float,
	AdjClose float,
	Volume int,
	CloseUSD float,
	FOREIGN KEY (IndexName) REFERENCES indexInfo(IndexName),
	constraint IndexNameDT PRIMARY KEY (IndexName, DT)
);