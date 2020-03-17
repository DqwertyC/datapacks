# Try to create a custom enchanting table.
execute as @e[type=experience_bottle] at @s run function custom_enchanting:search_for_table

# Check to see if we need to destroy a custom enchanting table
execute as @e[type=area_effect_cloud,tag=enchanting_table] at @s unless block ~ ~ ~ minecraft:enchanting_table run function custom_enchanting:kill_entities
execute as @e[type=area_effect_cloud,tag=enchanting_table] at @s unless block ~00 ~01 ~00 #custom_enchanting:air run function custom_enchanting:kill_entities
execute as @e[type=area_effect_cloud,tag=enchanting_table] at @s unless block ~00 ~00 ~01 #custom_enchanting:air run function custom_enchanting:kill_entities
execute as @e[type=area_effect_cloud,tag=enchanting_table] at @s unless block ~00 ~00 ~-1 #custom_enchanting:air run function custom_enchanting:kill_entities
execute as @e[type=area_effect_cloud,tag=enchanting_table] at @s unless block ~01 ~00 ~00 #custom_enchanting:air run function custom_enchanting:kill_entities
execute as @e[type=area_effect_cloud,tag=enchanting_table] at @s unless block ~-1 ~00 ~00 #custom_enchanting:air run function custom_enchanting:kill_entities

# Adjust the invisble item frames that make up the custom enchanting table
execute as @e[type=item_frame,tag=enchanting_slot] run data modify entity @s ItemRotation set value 0b
execute as @e[tag=watches_player] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 0
execute as @e[type=item_frame,tag=enchanting_slot] unless data entity @s Item run data modify entity @s Invulnerable set value 1b
execute as @e[type=item_frame,tag=enchanting_slot] if data entity @s Item run data modify entity @s Invulnerable set value 0b

# Keep our AEC alive
execute as @e[type=area_effect_cloud,tag=enchanting_table] at @s run data modify entity @s Age set value 1s
