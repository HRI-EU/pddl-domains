(define (domain gripper)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:types ARM BALL Ball1 Ball2 Ball3 LeftArm ROBOT ROOM RightArm Robot1 Room1 Room2)
    (:predicates 
    (actorIsIn ?Actor - ROBOT ?FromRoom - ROOM)  
    (holds ?Arm - ARM ?Object - BALL)  
    (isEmpty ?Arm - ARM)  
    (objectIsIn ?Object - BALL ?Room - ROOM))
    (:action drop
        :parameters (?Actor - ROBOT ?Room - ROOM ?Arm - ARM ?Object - BALL)
        :precondition (and (actorIsIn ?Actor ?Room) (holds ?Arm ?Object))
        :effect (and (objectIsIn ?Object ?Room) (not (holds ?Arm ?Object)) (isEmpty ?Arm))
    )
     (:action move
        :parameters (?Actor - ROBOT ?FromRoom - ROOM ?ToRoom - ROOM)
        :precondition (and (actorIsIn ?Actor ?FromRoom) (not (actorIsIn ?Actor ?ToRoom)))
        :effect (and (not (actorIsIn ?Actor ?FromRoom)) (actorIsIn ?Actor ?ToRoom))
    )
     (:action pickup
        :parameters (?Actor - ROBOT ?Room - ROOM ?Object - BALL ?Arm - ARM)
        :precondition (and (actorIsIn ?Actor ?Room) (objectIsIn ?Object ?Room) (isEmpty ?Arm))
        :effect (and (not (objectIsIn ?Object ?Room)) (not (isEmpty ?Arm)) (holds ?Arm ?Object))
    )
)