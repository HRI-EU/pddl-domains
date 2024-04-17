(define (domain pizza)
    (:requirements :disjunctive-preconditions :equality :existential-preconditions :strips :typing)
    (:types INGREDIENT_LIQUID INGREDIENT_SOLID OTHER_OBJECT basilicum gorgonzola mozzarella mushrooms oliveOil olives oregano oven pepper pepperoni pizzaDough salami salt table tomatoSauce)
    (:predicates 
    (hasLiquidIngredient ?pizzaDough - OTHER_OBJECT ?tomatoSauce - INGREDIENT_LIQUID)  
    (hasSolidIngredient ?pizzaDough - OTHER_OBJECT ?ingredient - INGREDIENT_SOLID)  
    (isBaked ?pizzaDough - OTHER_OBJECT)  
    (isLiquidOnTable ?tomatoSauce - INGREDIENT_LIQUID)  
    (isOtherObjectOnTable ?pizzaDough - OTHER_OBJECT)  
    (isSolidOnTable ?ingredient - INGREDIENT_SOLID)  
    (isUntopped ?pizzaDough - OTHER_OBJECT)  
    (isWarm ?oven - OTHER_OBJECT))
    (:action addSolid
        :parameters (?ingredient - INGREDIENT_SOLID ?pizzaDough - OTHER_OBJECT)
        :precondition (isSolidOnTable ?ingredient)
        :effect (hasSolidIngredient ?pizzaDough ?ingredient)
    )
     (:action bake
        :parameters (?oven - OTHER_OBJECT ?pizzaDough - OTHER_OBJECT)
        :precondition (and (isWarm ?oven) (isOtherObjectOnTable ?pizzaDough))
        :effect (isBaked ?pizzaDough)
    )
     (:action drizzle
        :parameters (?oliveOil - INGREDIENT_LIQUID ?pizzaDough - OTHER_OBJECT)
        :precondition (isLiquidOnTable ?oliveOil)
        :effect (hasLiquidIngredient ?pizzaDough ?oliveOil)
    )
     (:action spread
        :parameters (?pizzaDough - OTHER_OBJECT ?tomatoSauce - INGREDIENT_LIQUID)
        :precondition (and (isUntopped ?pizzaDough) (isLiquidOnTable ?tomatoSauce))
        :effect (and (not (isUntopped ?pizzaDough)) (hasLiquidIngredient ?pizzaDough ?tomatoSauce))
    )
)