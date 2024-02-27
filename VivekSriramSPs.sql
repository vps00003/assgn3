CREATE PROCEDURE getAirlineDelayRatings
@AirlineID NVARCHAR(10)
AS
BEGIN
SELECT Airline.AirlineID, Airline.AirlineName, Airline.AirlineDelayRating
FROM Airline
WHERE AirlineID = @AirlineID;
END;
GO
--EXEC getAirlineDelayRatings @AirlineID = '90001';

CREATE PROCEDURE searchFlightDelays
    @DepartureAirportID NVARCHAR(10),
    @DepartureTime DATETIME
AS
BEGIN
SELECT AVG(FlightDelayMinutes) AS AverageDelay
FROM Flight
WHERE DepartureAirportID = @DepartureAirportID
AND CAST(DepartureTime AS DATE) = CAST(@DepartureTime AS DATE)
END;
GO

--EXEC searchFlightDelays @DepartureAirportID = '50001', @DepartureTime = '2024-02-26 08:00:00'
