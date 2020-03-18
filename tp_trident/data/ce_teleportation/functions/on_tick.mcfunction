# These first lines are for checking the recipe and enchanting the item.
execute as @e[type=experience_bottle] at @s if entity @e[tag=enchanting_table,distance=..2] unless entity @e[tag=teleportation_charging,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["teleportation_checker"],Invisible:1b}
execute as @e[type=armor_stand,tag=teleportation_checker] run function ce_teleportation:check_materials
execute as @e[tag=teleportation_charging] at @s run function ce_teleportation:drain_experience