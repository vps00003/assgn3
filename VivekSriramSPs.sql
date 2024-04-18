CREATE PROCEDURE getAirlineDelayRatings
@AirlineID NVARCHAR(10)
AS
BEGIN
SELECT Airline.AirlineID, Airline.AirlineName, Airline.AirlineDelayRating, Airline.AirlineRating
FROM Airline
WHERE AirlineID = @AirlineID;
END;
GO
--EXEC getAirlineDelayRatings @AirlineID = '90001';

CREATE PROCEDURE GetAirlinesRatingGreaterThan
    @DelayRating NVARCHAR(10)
AS
BEGIN
    SELECT *
    FROM Airline
    WHERE AirlineDelayRating > @DelayRating;
END;
GO
--EXEC GetAirlinesRatingGreaterThan @DelayRating = '3.7';

ALTER PROCEDURE [dbo].[searchFlightDelays]
    @DepartureAirportID NVARCHAR(10),
	@DepartureTime datetime
AS
BEGIN
    SELECT AVG(FlightDelayMinutes) AS AverageDelay
    FROM Flight
    WHERE DepartureAirportID = @DepartureAirportID
	AND DepartureTime = @DepartureTime
END;

--exec searchFlightDelays @DepartureAirportID = '50001', @DepartureTime = '2024-02-28 12:00:00.000'

--EXEC GetAirlinesRatingGreaterThan @DelayRating = '3.7';
