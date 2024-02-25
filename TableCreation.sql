CREATE DATABASE assgn54;
GO

USE assgn54;
GO


CREATE TABLE City (
    CityID NVARCHAR(10) PRIMARY KEY,
    CityName NVARCHAR(50) NOT NULL,
    CityLatitude VARCHAR(50) NOT NULL,
    CityLongitude VARCHAR(50) NOT NULL,
    CityPopulation NVARCHAR(50) NULL
);
GO


CREATE TABLE Airport (
    CityID NVARCHAR(10) NOT NULL,
    AirportID NVARCHAR(10) NOT NULL PRIMARY KEY,
    AirportName VARCHAR(50) NOT NULL,
    AirportRunwayCount NVARCHAR(10) NULL,
    AirportAvgYearlyPassengers NVARCHAR(10) NULL,
    AirportDestinationCount NVARCHAR(10) NOT NULL,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);
GO


CREATE TABLE Airline (
    AirlineID NVARCHAR(10) PRIMARY KEY,
    AirlineName VARCHAR(50) NOT NULL,
    AirlineRating NVARCHAR(10) NOT NULL,
    AirlineDelayRating NVARCHAR(10) NOT NULL
);
GO


CREATE TABLE Flight (
    FlightID INT IDENTITY(1,1) PRIMARY KEY,
    AirlineID NVARCHAR(10) NOT NULL,
    DepartureAirportID NVARCHAR(10) NOT NULL,
    DestinationAirportID NVARCHAR(10) NOT NULL,
    DepartureTime DATETIME NOT NULL,
    ArrivalTime DATETIME NOT NULL,
    FlightDelayMinutes INT NULL,
    FOREIGN KEY (AirlineID) REFERENCES Airline(AirlineID),
    FOREIGN KEY (DepartureAirportID) REFERENCES Airport(AirportID),
    FOREIGN KEY (DestinationAirportID) REFERENCES Airport(AirportID)
);
GO
