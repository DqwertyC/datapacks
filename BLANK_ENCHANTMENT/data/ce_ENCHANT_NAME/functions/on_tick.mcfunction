# These first lines are for checking the recipe and enchanting the item.
execute as @e[type=experience_bottle] at @s if entity @e[tag=enchanting_table,distance=..2] unless entity @e[tag=ENCHANTMENT_NAME_charging,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ENCHANTMENT_NAME_checker"],Invisible:1b}
execute as @e[type=armor_stand,tag=ENCHANTMENT_NAME_checker] run function ce_ENCHANTMENT_NAME:check_materials
execute as @e[tag=ENCHANTMENT_NAME_charging] at @s run function ce_ENCHANTMENT_NAME:drain_experience