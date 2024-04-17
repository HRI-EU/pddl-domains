(define (problem problem_1)
    (:domain logistic)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              Loc1 - LOCATION 
              Loc2 - LOCATION 
              Loc3 - LOCATION 
              Loc4 - LOCATION 
              PLANE - VEHICLE 
              Package1 - PACKAGE 
              Package2 - PACKAGE 
              Plane1 - PLANE_INSTANCE 
              TRUCK - VEHICLE 
              Truck1 - TRUCK_INSTANCE 
              Truck2 - TRUCK_INSTANCE 
    )
    (:init (atPackage Package1 Loc1)
		(atPackage Package2 Loc3)
		(atPlane Plane1 Loc2)
		(atTruck Truck1 Loc1)
		(atTruck Truck2 Loc3))
    (:goal (and (atPackage Package1 Loc4)
		(atPackage Package2 Loc2)))
)