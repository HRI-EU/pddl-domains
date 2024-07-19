(define (problem problem_1)
    (:domain tyreworld)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              boot - CONTAINER 
              car_side - LOCATION 
              flat_hub - HUB 
              flat_nut - NUT 
              flat_wheel - WHEEL 
              jack - TOOL 
              pump - TOOL 
              spare_hub - HUB 
              spare_nut - NUT 
              spare_wheel - WHEEL 
              target_wheel - LOCATION 
              wrench - TOOL 
    )
    (:init (atWheel car_side flat_wheel)
		(closed boot)
		(connected flat_wheel flat_hub)
		(inTool boot jack)
		(inTool boot pump)
		(inTool boot wrench))
    (:goal (and (connected spare_wheel flat_hub)
		(atWheel target_wheel spare_wheel)
		(inTool boot wrench)
		(inTool boot jack)
		(inTool boot pump)
		(closed boot)))
)