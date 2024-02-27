# MIST 353 Assignment 3
### Group Members: Vivek Sriram, Tyler McCoy, Noah Alberti
****
## Idea Combination Statement
We chose to continue with one idea, and drop the remaining two ideas for the remainder of our work as a group. Our new 'company' will move forward with a plan for a web app that allows a user to select destination/arrival airports
and receive an estimate on the likelihood they may experience flight delays, based on historical climate data. Users should be able to see specific info about a certain flight they may be taking, as well as generic info about an airport or an airline to help
them inform their booking decisions.
****
## Stored Procedures
1. **GetAirportDetails** (Noah Alberti)
	- Description: Get all details for an airport by AirportID, used to create an airport option to select.
2. **getAirlineDelayRatings** (Vivek Sriram)
	- Description: Get the historical delay rating for an airline based on AirlineID.
3. **InsertAirport** (Tyler McCoy)
	- Description: Add an airport. Used by website operator to add an airport to the option list.
4. **InsertAirline** (Noah Alberti)
	- Description: Add an Airline. Used by website operator when a new airline needs to be added to database.
5. **InsertFlight** (Tyler McCoy)
	- Description: Add a new flight route. Used by website operator when wanting to add delay data about a new flight route.
6. **searchFlightDelays** (Vivek Sriram)
	- Description: Get the delay info for a specific flight leaving an airport at a certain time based on Departure AirportID and DepartureTime
