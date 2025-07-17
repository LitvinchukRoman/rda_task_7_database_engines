CREATE DATABASE ShopDB; 
USE ShopDB; 

CREATE TABLE Countries (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE GeoIPCache (
    ID INT AUTO_INCREMENT,
    IPRange VARCHAR(100),
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(ID),
    PRIMARY KEY ID
) ENGINE=MEMORY;

CREATE TABLE ProductDescription (
    ID INT AUTO_INCREMENT,
    CountryID INT,
    ProductID INT,
    Description VARCHAR(100),
    FOREIGN KEY (CountryID) REFERENCES Countries(ID),
    PRIMARY KEY ID
) ENGINE=MyISAM;

CREATE TABLE Logs (
    ID INT AUTO_INCREMENT,
    Time DATE,
    LogRecord VARCHAR(100),
    PRIMARY KEY ID
) ENGINE=Blackhole;

CREATE TABLE ProductReporting (
    Date DATE,
    ProductName VARCHAR(100),
    Orders INT
) ENGINE=CSV;
