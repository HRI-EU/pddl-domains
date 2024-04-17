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
    (:init (atPackage LocationA2 Package1)
		(atPackage LocationB2 Package2)
		(atPlane LocationA1 Plane1)
		(atTruck LocationA1 TruckA)
		(atTruck LocationB1 TruckB))
    (:goal (and (atPackage LocationA2 Package1)
		(atPackage LocationB1 Package2)))
)