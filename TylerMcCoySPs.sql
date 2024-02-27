CREATE PROCEDURE InsertAirport
    @CityID NVARCHAR(10),
    @AirportID NVARCHAR(10),
    @AirportName VARCHAR(50),
    @AirportRunwayCount NVARCHAR(10),
    @AirportAvgYearlyPassengers NVARCHAR(10),
    @AirportDestinationCount NVARCHAR(10)
AS
BEGIN
    INSERT INTO Airport (CityID, AirportID, AirportName, AirportRunwayCount, AirportAvgYearlyPassengers, AirportDestinationCount)
    VALUES (@CityID, @AirportID, @AirportName, @AirportRunwayCount, @AirportAvgYearlyPassengers, @AirportDestinationCount)
END;
Go

--EXEC InsertAirport @CityID = '10001', @AirportID = '50006', @AirportName = 'Newark Liberty International Airport', @AirportRunwayCount = '3', @AirportAvgYearlyPassengers = '25895943', @AirportDestinationCount = '185';


CREATE PROCEDURE InsertFlight
    @AirlineID NVARCHAR(10),
    @DepartureAirportID NVARCHAR(10),
    @DestinationAirportID NVARCHAR(10),
    @DepartureTime DATETIME,
    @ArrivalTime DATETIME,
    @FlightDelayMinutes INT
AS
BEGIN
    INSERT INTO Flight (AirlineID, DepartureAirportID, DestinationAirportID, DepartureTime, ArrivalTime, FlightDelayMinutes)
    VALUES (@AirlineID, @DepartureAirportID, @DestinationAirportID, @DepartureTime, @ArrivalTime, @FlightDelayMinutes)
END;

Go

--EXEC InsertFlight @AirlineID = 90004, @DepartureAirportID = 50004, @DestinationAirportID = 50006, @DepartureTime = '2024-02-28 08:00:00', @ArrivalTime = '2024-02-28 10:30:00', @FlightDelayMinutes = 25