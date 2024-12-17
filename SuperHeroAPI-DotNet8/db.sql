CREATE DATABASE [SuperHeroDb]
GO

USE [SuperHeroDb];
GO

CREATE TABLE SuperHeroes (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX) NOT NULL,
    FirstName NVARCHAR(MAX) NOT NULL,
    LastName NVARCHAR(MAX) NOT NULL,
    Place NVARCHAR(MAX) NOT NULL
);
