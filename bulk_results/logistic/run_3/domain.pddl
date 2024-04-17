(define (domain logistic)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:types LOCATION Loc1 Loc2 Loc3 Loc4 PACKAGE PLANE PLANE_INSTANCE Package1 Package2 Plane1 TRUCK TRUCK_INSTANCE Truck1 Truck2 VEHICLE)
    (:predicates 
    (atPackage ?package - PACKAGE ?location - LOCATION)  
    (atPlane ?plane - PLANE_INSTANCE ?location - LOCATION)  
    (atTruck ?truck - TRUCK_INSTANCE ?location - LOCATION)  
    (inPlanePackage ?package - PACKAGE ?plane - PLANE_INSTANCE)  
    (inTruckPackage ?package - PACKAGE ?truck - TRUCK_INSTANCE))
    (:action drive
        :parameters (?truck - TRUCK_INSTANCE ?fromLocation - LOCATION ?toLocation - LOCATION)
        :precondition (atTruck ?truck ?fromLocation)
        :effect (and (not (atTruck ?truck ?fromLocation)) (atTruck ?truck ?toLocation))
    )
     (:action fly
        :parameters (?plane - PLANE_INSTANCE ?fromLocation - LOCATION ?toLocation - LOCATION)
        :precondition (atPlane ?plane ?fromLocation)
        :effect (and (not (atPlane ?plane ?fromLocation)) (atPlane ?plane ?toLocation))
    )
     (:action loadPlane
        :parameters (?package - PACKAGE ?location - LOCATION ?plane - PLANE_INSTANCE)
        :precondition (and (atPackage ?package ?location) (atPlane ?plane ?location))
        :effect (and (not (atPackage ?package ?location)) (inPlanePackage ?package ?plane))
    )
     (:action loadTruck
        :parameters (?package - PACKAGE ?location - LOCATION ?truck - TRUCK_INSTANCE)
        :precondition (and (atPackage ?package ?location) (atTruck ?truck ?location))
        :effect (and (not (atPackage ?package ?location)) (inTruckPackage ?package ?truck))
    )
     (:action unloadPlane
        :parameters (?package - PACKAGE ?plane - PLANE_INSTANCE ?location - LOCATION)
        :precondition (and (inPlanePackage ?package ?plane) (atPlane ?plane ?location))
        :effect (and (not (inPlanePackage ?package ?plane)) (atPackage ?package ?location))
    )
     (:action unloadTruck
        :parameters (?package - PACKAGE ?truck - TRUCK_INSTANCE ?location - LOCATION)
        :precondition (and (inTruckPackage ?package ?truck) (atTruck ?truck ?location))
        :effect (and (not (inTruckPackage ?package ?truck)) (atPackage ?package ?location))
    )
)