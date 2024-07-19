(define (problem problem_1)
    (:domain gripper)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              Ball1 - BALL 
              Ball2 - BALL 
              LeftArm - ARM 
              RightArm - ARM 
              Robot1 - ROBOT 
              Room1 - ROOM 
              Room2 - ROOM 
    )
    (:init (ballIsIn Room1 Ball1)
		(ballIsIn Room1 Ball2)
		(isFree LeftArm)
		(isFree RightArm)
		(robotIsIn Room1 Robot1))
    (:goal (and (ballIsIn Room2 Ball1)
		(ballIsIn Room2 Ball2)))
)