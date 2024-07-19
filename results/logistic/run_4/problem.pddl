(define (problem problem_1)
    (:domain logistic)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              CityA - CITY 
              CityB - CITY 
              LocationA1 - LOCATION 
              LocationA2 - LOCATION 
              LocationB1 - LOCATION 
              LocationB2 - LOCATION 
              Package1 - PACKAGE 
              Package2 - PACKAGE 
              Plane1 - PLANE 
              Plane2 - PLANE 
              TruckA - TRUCK 
              TruckB - TRUCK 
    )
    (:init (atLocation Package1 LocationA2)
		(atLocation Package2 LocationB2)
		(atPlaneCity Plane1 CityA)
		(atPlaneCity Plane2 CityB)
		(atTruckCityLocation TruckA CityA LocationA1)
		(atTruckCityLocation TruckB CityB LocationB1))
    (:goal (and (atLocation Package1 LocationB2)
		(atLocation Package2 LocationA2)))
)