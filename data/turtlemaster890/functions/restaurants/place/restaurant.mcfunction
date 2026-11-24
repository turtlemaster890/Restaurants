##
 # place/restaurant.mcfunction
 #
 # Places a restaurant controller at the location called from with id $(ID)
 # Created by turtlemaster890.
##

setblock ~ ~ ~ lectern
summon minecraft:marker ~ ~ ~ {Tags: ["restaurant_controller", "new"]}
# Set the restaurant ID
$scoreboard players set @e[tag=new, limit=1, sort=nearest, distance=..1, type=minecraft:marker] restaurant_id $(ID)
$data modify storage restaurants:restaurant_data restaurants[$(ID)] set value {orders: [], kitchenSources: []}
tag @e[tag=new, limit=1, sort=nearest, distance=..1, type=minecraft:marker] remove new