# These first lines are for checking the recipe and enchanting the item.
execute as @e[type=experience_bottle] at @s if entity @e[tag=enchanting_table,distance=..2] unless entity @e[tag=charging,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["enders_reach_checker"],Invisible:1b}
execute as @e[type=armor_stand,tag=enders_reach_checker] run function ce_enders_reach:check_materials
execute as @e[tag=charging] at @s run function ce_enders_reach:drain_experience