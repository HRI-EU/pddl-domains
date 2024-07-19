(define (problem problem_1)
    (:domain gripper)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              Ball1 - BALL 
              Ball2 - BALL 
              Ball3 - BALL 
              LeftArm - ARM 
              RightArm - ARM 
              Robot1 - ROBOT 
              Room1 - ROOM 
              Room2 - ROOM 
    )
    (:init (actorIsIn Robot1 Room1)
		(isEmpty LeftArm)
		(isEmpty RightArm)
		(objectIsIn Ball1 Room1)
		(objectIsIn Ball2 Room1)
		(objectIsIn Ball3 Room1))
    (:goal (and (objectIsIn Ball1 Room2)
		(objectIsIn Ball2 Room2)
		(objectIsIn Ball3 Room2)))
)