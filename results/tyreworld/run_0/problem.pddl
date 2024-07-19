(define (problem problem_1)
    (:domain tyreworld)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              boot - CONTAINER 
              car_side - LOCATION 
              flat_tyre - WHEEL 
              front_hub - HUB 
              jack - TOOL 
              nut - NUT 
              pump - TOOL 
              robot - ROBOT 
              spare_tyre - WHEEL 
              wrench - TOOL 
    )
    (:init (isAt robot car_side)
		(isOnHub flat_tyre front_hub)
		(isSecuredBy flat_tyre nut)
		(not (isJackedUp robot))
		(toolIsInContainer jack boot)
		(toolIsInContainer pump boot)
		(toolIsInContainer wrench boot))
    (:goal (and (wheelIsInContainer flat_tyre boot)
		(isOnHub spare_tyre front_hub)
		(isSecuredBy spare_tyre nut)))
)