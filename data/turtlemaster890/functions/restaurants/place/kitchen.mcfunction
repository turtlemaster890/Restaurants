##
 # place/kitchen.mcfunction
 # 
 # Adds the location called from to the kitchen list of the restaurant with id $(ID)
 # Created by turtlemaster890.
##
summon marker ~ ~ ~ {Tags: ["restaurant_kitchen", "new"]}
$scoreboard players set @e[tag=new, limit=1, sort=nearest, distance=..1, type=minecraft:marker] restaurant_id $(ID)
$data modify storage restaurants:restaurant_data restaurants[$(ID)].kitchenSources append from entity @e[tag=new, limit=1, sort=nearest, distance=..1, type=minecraft:marker] Pos
tag @e[tag=new, limit=1, sort=nearest, distance=..1, type=minecraft:marker] remove new