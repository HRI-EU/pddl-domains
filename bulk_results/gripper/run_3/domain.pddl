(define (domain gripper)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:types ARM BALL Ball1 Ball2 LeftArm ROBOT ROOM RightArm Robot1 Room1 Room2)
    (:predicates 
    (ballIsIn ?Room - ROOM ?Ball - BALL)  
    (holds ?Arm - ARM ?Ball - BALL)  
    (isFree ?Arm - ARM)  
    (robotIsIn ?Room - ROOM ?Robot - ROBOT))
    (:action drop
        :parameters (?Arm - ARM ?Ball - BALL ?Room - ROOM ?Robot - ROBOT)
        :precondition (and (holds ?Arm ?Ball) (robotIsIn ?Room ?Robot))
        :effect (and (ballIsIn ?Room ?Ball) (not (holds ?Arm ?Ball)) (isFree ?Arm))
    )
     (:action move
        :parameters (?FromRoom - ROOM ?Robot - ROBOT ?ToRoom - ROOM)
        :precondition (robotIsIn ?FromRoom ?Robot)
        :effect (and (not (robotIsIn ?FromRoom ?Robot)) (robotIsIn ?ToRoom ?Robot))
    )
     (:action pickUp
        :parameters (?Room - ROOM ?Ball - BALL ?Robot - ROBOT ?Arm - ARM)
        :precondition (and (ballIsIn ?Room ?Ball) (robotIsIn ?Room ?Robot) (isFree ?Arm))
        :effect (and (not (ballIsIn ?Room ?Ball)) (holds ?Arm ?Ball) (not (isFree ?Arm)))
    )
)