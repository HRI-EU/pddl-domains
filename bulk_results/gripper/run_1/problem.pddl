(define (problem problem_1)
    (:domain gripper)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              Ball1 - BALL 
              Ball2 - BALL 
              Ball3 - BALL 
              FirstArm - ARM 
              Robot1 - ROBOT 
              Room1 - ROOM 
              Room2 - ROOM 
              SecondArm - ARM 
    )
    (:init (isFree FirstArm)
		(isFree SecondArm)
		(objectIsInRoom Room1 Ball1)
		(objectIsInRoom Room1 Ball2)
		(objectIsInRoom Room1 Ball3)
		(robotIsInRoom Room1 Robot1))
    (:goal (and (objectIsInRoom Room2 Ball1)
		(objectIsInRoom Room2 Ball2)
		(objectIsInRoom Room2 Ball3)))
)