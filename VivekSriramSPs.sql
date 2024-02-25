CREATE PROCEDURE getAirportDetails
@AirportID NVARCHAR(10)
AS
BEGIN
SELECT *
FROM Airport
WHERE AirportID = @AirportID;
END;

--EXEC getAirportDetails @AirportID = '50001';


CREATE PROCEDURE getAirlineDelayRatings
@AirlineID NVARCHAR(10)
AS
BEGIN
SELECT Airline.AirlineID, Airline.AirlineName, Airline.AirlineDelayRating
FROM Airline
WHERE AirlineID = @AirlineID;
END;

--EXEC getAirlineDelayRatings @AirlineID = '90001';
