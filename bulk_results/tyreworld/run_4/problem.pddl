(define (problem problem_1)
    (:domain tyreworld)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              boot - CONTAINER 
              car_hub - HUB 
              car_side - LOCATION 
              flat_wheel - WHEEL 
              jack - TOOL 
              nut1 - NUT 
              pump - TOOL 
              robot - ROBOT 
              spare_wheel - WHEEL 
              target_wheel - LOCATION 
              wrench - TOOL 
    )
    (:init (nutAssociatedWithHub nut1 car_hub)
		(robotAtLocation robot target_wheel)
		(toolContainedInContainer jack boot)
		(toolContainedInContainer pump boot)
		(toolContainedInContainer wrench boot)
		(wheelAtHub flat_wheel car_hub))
    (:goal (and (wheelAtHub spare_wheel car_hub)
		(nutAssociatedWithHub nut1 car_hub)))
)