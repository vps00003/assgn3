-- Inserting data into the City table
INSERT INTO City (CityID, CityName, CityLatitude, CityLongitude, CityPopulation)
VALUES 
    ('10001', 'New York City', '40.7128', '-74.0060', '8398748'),
    ('10002', 'Los Angeles', '34.0522', '-118.2437', '3990456'),
    ('10003', 'Chicago', '41.8781', '-87.6298', '2705994'),
    ('10004', 'Houston', '29.7604', '-95.3698', '2320268'),
    ('10005', 'Phoenix', '33.4484', '-112.0740', '1680992');

-- Inserting data into the Airport table
INSERT INTO Airport (CityID, AirportID, AirportName, AirportRunwayCount, AirportAvgYearlyPassengers, AirportDestinationCount)
VALUES 
    ('10001', '50001', 'John F. Kennedy International Airport', '4', '61659000', '96'),
    ('10001', '50002', 'LaGuardia Airport', '2', '31137000', '75'),
    ('10003', '50003', 'OHare International Airport', '7', '90090213', '210'),
    ('10003', '50004', 'Midway International Airport', '5', '22162861', '62'),
    ('10002', '50005', 'Los Angeles International Airport', '4', '88681174', '90');

-- Inserting data into the Airline table
INSERT INTO Airline (AirlineID, AirlineName, AirlineRating, AirlineDelayRating)
VALUES 
    ('90001', 'Delta Air Lines', '4.5', '3.8'),
    ('90002', 'American Airlines', '3.9', '3.5'),
    ('90003', 'United Airlines', '3.7', '3.6');

-- Inserting data into the Flight table
INSERT INTO Flight (AirlineID, DepartureAirportID, DestinationAirportID, DepartureTime, ArrivalTime, FlightDelayMinutes)
VALUES 
    ('90001', '50001', '50005', '2024-02-26 08:00:00', '2024-02-26 11:00:00', NULL),
    ('90002', '50005', '50001', '2024-02-27 10:00:00', '2024-02-27 13:00:00', 30),
    ('90003', '50001', '50003', '2024-02-28 12:00:00', '2024-02-28 15:00:00', 15),
    ('90001', '50004', '50002', '2024-02-26 14:00:00', '2024-02-26 17:00:00', 10),
    ('90002', '50002', '50004', '2024-02-27 16:00:00', '2024-02-27 19:00:00', NULL),
    ('90003', '50004', '50003', '2024-02-28 18:00:00', '2024-02-28 21:00:00', NULL),
    ('90001', '50003', '50005', '2024-02-26 20:00:00', '2024-02-27 00:00:00', 45),
    ('90002', '50005', '50003', '2024-02-27 22:00:00', '2024-02-28 02:00:00', 20),
    ('90003', '50003', '50004', '2024-02-28 23:00:00', '2024-02-29 02:00:00', NULL),
    ('90001', '50004', '50001', '2024-02-27 02:00:00', '2024-02-27 05:00:00', 5);
