(define (problem problem_1)
    (:domain gripper)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:objects 
              Room1 - ROOM 
              Room2 - ROOM 
              ball1 - BALL 
              ball2 - BALL 
              ballN - BALL 
              left_arm - ARM 
              right_arm - ARM 
              robot - ROBOT 
    )
    (:init (isAt Room1 robot)
		(isEmpty left_arm)
		(isEmpty right_arm)
		(isIn Room1 ball1)
		(isIn Room1 ball2)
		(isIn Room1 ballN))
    (:goal (and (isIn Room2 ball1)
		(isIn Room2 ball2)
		(isIn Room2 ballN)))
)