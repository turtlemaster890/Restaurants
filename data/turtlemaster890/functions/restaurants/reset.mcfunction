##
 # reset.mcfunction
 # restaurants
 #
 # Created by turtlemaster890.
##
execute unless data storage restaurants:restaurant_data restaurants run data modify storage restaurants:restaurant_data restaurants set value {}
scoreboard objectives add restaurant_id dummy