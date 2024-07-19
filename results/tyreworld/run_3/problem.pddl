(define (problem problem_1)
    (:domain tyreworld)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              car_side - LOCATION 
              jack - TOOL 
              nut1 - NUT 
              nut2 - NUT 
              nut3 - NUT 
              nut4 - NUT 
              robot1 - ROBOT 
              wheel_back_left - WHEEL 
              wheel_back_right - WHEEL 
              wheel_front_left - WHEEL 
              wheel_front_right - WHEEL 
              workshop - LOCATION 
              wrench - TOOL 
    )
    (:init (at robot1 workshop)
		(empty robot1)
		(in jack workshop)
		(in wrench workshop)
		(lowered car_side)
		(on wheel_front_left car_side))
    (:goal (and (on wheel_front_right car_side)
		(in wrench workshop)
		(in jack workshop)
		(lowered car_side)))
)