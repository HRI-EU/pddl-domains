(define (problem problem_1)
    (:domain gripper)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              Arm1 - ARM 
              Arm2 - ARM 
              Ball1 - BALL 
              Ball2 - BALL 
              Ball3 - BALL 
              Robot - ROBOT 
              Room1 - ROOM 
              Room2 - ROOM 
    )
    (:init (actorIsIn Room1 Robot)
		(isEmpty Arm1)
		(isEmpty Arm2)
		(objectIsIn Room1 Ball1)
		(objectIsIn Room1 Ball2)
		(objectIsIn Room1 Ball3))
    (:goal (and (objectIsIn Room2 Ball1)
		(objectIsIn Room2 Ball2)
		(objectIsIn Room2 Ball3)))
)