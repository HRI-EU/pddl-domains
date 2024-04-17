(define (domain gripper)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:types ARM Arm1 Arm2 BALL Ball1 Ball2 Ball3 ROBOT ROOM Robot Room1 Room2)
    (:predicates 
    (actorIsIn ?fromRoom - ROOM ?robot - ROBOT)  
    (isEmpty ?arm - ARM)  
    (isHolding ?arm - ARM ?ball - BALL)  
    (objectIsIn ?room - ROOM ?ball - BALL))
    (:action drop
        :parameters (?room - ROOM ?robot - ROBOT ?arm - ARM ?ball - BALL)
        :precondition (and (actorIsIn ?room ?robot) (isHolding ?arm ?ball))
        :effect (and (isEmpty ?arm) (objectIsIn ?room ?ball) (not (isHolding ?arm ?ball)))
    )
     (:action move
        :parameters (?fromRoom - ROOM ?robot - ROBOT ?toRoom - ROOM)
        :precondition (actorIsIn ?fromRoom ?robot)
        :effect (and (not (actorIsIn ?fromRoom ?robot)) (actorIsIn ?toRoom ?robot))
    )
     (:action pickup
        :parameters (?room - ROOM ?robot - ROBOT ?ball - BALL ?arm - ARM)
        :precondition (and (actorIsIn ?room ?robot) (objectIsIn ?room ?ball) (isEmpty ?arm))
        :effect (and (not (isEmpty ?arm)) (not (objectIsIn ?room ?ball)) (isHolding ?arm ?ball))
    )
)