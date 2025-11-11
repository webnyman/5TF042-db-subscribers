-- Skapa separat databas för prenumerantsystemet.
CREATE DATABASE SubscriberSystemDb;
GO

USE SubscriberSystemDb;
GO

-- Tabell: prenumeranter
CREATE TABLE dbo.tbl_subscribers
(
    sub_prenr       NVARCHAR(20)  NOT NULL CONSTRAINT PK_tbl_subscribers PRIMARY KEY,
    sub_personnr    NVARCHAR(20)  NOT NULL,
    sub_fornamn     NVARCHAR(50)  NOT NULL,
    sub_efternamn   NVARCHAR(50)  NOT NULL,
    sub_telefon     NVARCHAR(20)  NOT NULL,
    sub_adr_utm     NVARCHAR(100) NOT NULL,
    sub_postnr      NVARCHAR(10)  NOT NULL,
    sub_ort         NVARCHAR(50)  NOT NULL,
    sub_skapad      DATETIME2     NOT NULL CONSTRAINT DF_tbl_subscribers_skapad DEFAULT SYSUTCDATETIME()
);
GO

-- Några testdata
INSERT INTO dbo.tbl_subscribers
(sub_prenr, sub_personnr, sub_fornamn, sub_efternamn, sub_telefon, sub_adr_utm, sub_postnr, sub_ort)
VALUES
('1001', '19800101-1234', 'Anna', 'Andersson', '070-1234567', 'Storgatan 1', '11122', 'Stockholm'),
('1002', '19751212-5678', 'Björn', 'Berg', '070-7654321', 'Parkvägen 12', '33344', 'Uppsala');
