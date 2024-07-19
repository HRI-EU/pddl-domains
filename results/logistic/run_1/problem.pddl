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
              TruckA - TRUCK 
              TruckB - TRUCK 
    )
    (:init (atPackage Package1 LocationA2)
		(atPackage Package2 LocationB2)
		(atPlane Plane1 LocationA1)
		(atTruck TruckA LocationA1)
		(atTruck TruckB LocationB1)
		(inCity LocationA1 CityA)
		(inCity LocationA2 CityA)
		(inCity LocationB1 CityB)
		(inCity LocationB2 CityB))
    (:goal (and (atPackage Package1 LocationB2)
		(atPackage Package2 LocationA2)))
)