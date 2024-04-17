(define (domain gripper)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:types ARM BALL Ball1 Ball2 Ball3 FirstArm ROBOT ROOM Robot1 Room1 Room2 SecondArm)
    (:predicates 
    (isFree ?Arm - ARM)  
    (isHolding ?Arm - ARM ?Ball - BALL)  
    (objectIsInRoom ?Room - ROOM ?Ball - BALL)  
    (robotIsInRoom ?Room - ROOM ?Robot - ROBOT))
    (:action dropBall
        :parameters (?Arm - ARM ?Ball - BALL ?Room - ROOM ?Robot - ROBOT)
        :precondition (and (isHolding ?Arm ?Ball) (robotIsInRoom ?Room ?Robot))
        :effect (and (isFree ?Arm) (not (isHolding ?Arm ?Ball)) (objectIsInRoom ?Room ?Ball))
    )
     (:action move
        :parameters (?FromRoom - ROOM ?Robot - ROBOT ?ToRoom - ROOM)
        :precondition (robotIsInRoom ?FromRoom ?Robot)
        :effect (and (not (robotIsInRoom ?FromRoom ?Robot)) (robotIsInRoom ?ToRoom ?Robot))
    )
     (:action pickUpBall
        :parameters (?Room - ROOM ?Ball - BALL ?Robot - ROBOT ?Arm - ARM)
        :precondition (and (objectIsInRoom ?Room ?Ball) (robotIsInRoom ?Room ?Robot) (isFree ?Arm) (not (isHolding ?Arm ?Ball)))
        :effect (and (not (isFree ?Arm)) (isHolding ?Arm ?Ball))
    )
)