(define (domain gripper)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:types ARM BALL ROBOT ROOM Room1 Room2 ball1 ball2 ballN left_arm right_arm robot)
    (:predicates 
    (isAt ?FromRoom - ROOM ?Robot - ROBOT)  
    (isEmpty ?Arm - ARM)  
    (isHolding ?Arm - ARM ?Ball - BALL)  
    (isIn ?Room - ROOM ?Ball - BALL))
    (:action drop
        :parameters (?Arm - ARM ?Ball - BALL ?Room - ROOM ?Robot - ROBOT)
        :precondition (and (isHolding ?Arm ?Ball) (isAt ?Room ?Robot))
        :effect (and (isEmpty ?Arm) (not (isHolding ?Arm ?Ball)) (isIn ?Room ?Ball))
    )
     (:action move
        :parameters (?FromRoom - ROOM ?Robot - ROBOT ?ToRoom - ROOM)
        :precondition (isAt ?FromRoom ?Robot)
        :effect (and (not (isAt ?FromRoom ?Robot)) (isAt ?ToRoom ?Robot))
    )
     (:action pickup
        :parameters (?Arm - ARM ?Room - ROOM ?Robot - ROBOT ?Ball - BALL)
        :precondition (and (isEmpty ?Arm) (isAt ?Room ?Robot) (isIn ?Room ?Ball))
        :effect (and (not (isEmpty ?Arm)) (not (isIn ?Room ?Ball)) (isHolding ?Arm ?Ball))
    )
)