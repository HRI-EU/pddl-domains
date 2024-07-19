(define (problem problem_1)
    (:domain tyreworld)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              bootContainer - CONTAINER 
              carSide - LOCATION 
              flatTyreSmall - SMALL_OBJECT 
              flatTyreWheel - WHEEL 
              hubObject - HUB 
              jackSmall - SMALL_OBJECT 
              jackTool - TOOL 
              nutObject - NUT 
              nutSmall - SMALL_OBJECT 
              pumpSmall - SMALL_OBJECT 
              pumpTool - TOOL 
              robot - ROBOT 
              spareTyreSmall - SMALL_OBJECT 
              spareTyreWheel - WHEEL 
              wrenchSmall - SMALL_OBJECT 
              wrenchTool - TOOL 
    )
    (:init (attachedTyre hubObject flatTyreWheel)
		(inContainer flatTyreSmall bootContainer)
		(inContainer jackSmall bootContainer)
		(inContainer nutSmall bootContainer)
		(inContainer pumpSmall bootContainer)
		(inContainer spareTyreSmall bootContainer)
		(inContainer wrenchSmall bootContainer)
		(isAt robot carSide)
		(not (isLifted carSide))
		(securedNut hubObject nutObject))
    (:goal (and (attachedTyre hubObject spareTyreWheel)
		(inContainer flatTyreSmall bootContainer)
		(inContainer wrenchSmall bootContainer)
		(inContainer jackSmall bootContainer)
		(inContainer pumpSmall bootContainer)
		(securedNut hubObject nutObject)))
)