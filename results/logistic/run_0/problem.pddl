(define (problem problem_1)
    (:domain logistic)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              AirportA - AIRPORT 
              AirportB - AIRPORT 
              CityA - CITY 
              CityB - CITY 
              Location1 - LOCATION 
              Location2 - LOCATION 
              Location3 - LOCATION 
              Location4 - LOCATION 
              Package1 - PACKAGE 
              Package2 - PACKAGE 
              Plane1 - PLANE 
              TruckA - TRUCK 
              TruckB - TRUCK 
    )
    (:init (atLocation Package1 Location2)
		(atLocation Package2 Location1)
		(atTruck TruckA Location1)
		(atTruck TruckB Location3)
		(planeAtAirport Plane1 AirportA)
		(truckAtAirport TruckA AirportA)
		(truckAtAirport TruckB AirportB))
    (:goal (and (atLocation Package1 Location4)
		(atLocation Package2 Location3)))
)