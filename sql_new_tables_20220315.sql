
);

DROP TABLE IF EXISTS indexInfo;

CREATE TABLE indexInfo(
	Region varchar(40),
	Exchange varchar(40),
	Index varchar(10),
	Currency varchar(3),
	PRIMARY KEY (Index)
);


DROP TABLE IF EXISTS indexProcessed;

CREATE TABLE indexProcessed(
	Index varchar(10),
	Date date,
	Open float,
	High float,
	Low float,
	Close float,
	Adj_Close float,
	Volume bigint,
	CloseUSD float,
	FOREIGN KEY (IndexName) REFERENCES indexInfo(Index),
	constraint IndexNameDate PRIMARY KEY (Index, Date)
);

DROP TABLE IF EXISTS nya;

CREATE TABLE nya(
select 
a.*,
Region,
Exchange,
Currency
from indexProcessed a 
left join indexInfo b on a.Index = b.Index
WHERE a.index = 'NYA'
);

DROP TABLE IF EXISTS nasdaq;

CREATE TABLE nasdaq(
select 
a.*,
Region,
Exchange,
Currency
from indexProcessed a 
left join indexInfo b on a.Index = b.Index
WHERE a.index = 'IXIC'
);

CREATE TABLE IF NOT EXISTS nya_cleaned
(
    region character varying(15),
    exchange character varying(20),
    index character varying(10),
    currency character varying(5),
    date date,
    open double precision,
    high double precision,
    low double precision,
    close double precision,
    adj_close double precision,
    volume double precision,
    closeusd double precision,
    prevclose double precision,
    prevhigh double precision,
    prevlow double precision,
    delta double precision,
    target character varying(4) COLLATE pg_catalog."default",
    month integer);

CREATE TABLE IF NOT EXISTS nasdaq_cleaned
(
    region character varying(15),
    exchange character varying(20),
    index character varying(10),
    currency character varying(5),
    date date,
    open double precision,
    high double precision,
    low double precision,
    close double precision,
    adj_close double precision,
    volume double precision,
    closeusd double precision,
    prevclose double precision,
    prevhigh double precision,
    prevlow double precision,
    delta double precision,
    target character varying(4) COLLATE pg_catalog."default",
    month integer)