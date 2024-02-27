CREATE PROCEDURE GetAirportDetails
@AirportID NVARCHAR(10)
AS
BEGIN
SELECT *
FROM Airport
WHERE AirportID = @AirportID;
END;
Go
--EXEC GetAirportDetails @AirportID = '50001';



CREATE PROCEDURE InsertAirline
    @AirlineID NVARCHAR(10),
    @AirlineName VARCHAR(50),
    @AirlineRating NVARCHAR(10),
    @AirlineDelayRating NVARCHAR(10)
AS
BEGIN
    INSERT INTO Airline (AirlineID, AirlineName, AirlineRating, AirlineDelayRating)
    VALUES (@AirlineID, @AirlineName, @AirlineRating, @AirlineDelayRating)
END;

Go

--EXEC InsertAirline @AirlineID = 90004, @AirlineName = 'Southwest Airlines', @AirlineRating = 3.5, @AirlineDelayRating = 3.8;