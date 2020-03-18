# These first lines are for checking the recipe and enchanting the item.
execute as @e[type=experience_bottle] at @s if entity @e[tag=enchanting_table,distance=..2] unless entity @e[tag=blazes_touch_charging,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["blazes_touch_checker"],Invisible:1b}
execute as @e[type=armor_stand,tag=blazes_touch_checker] run function ce_blazes_touch:check_materials
execute as @e[tag=blazes_touch_charging] at @s run function ce_blazes_touch:drain_experience