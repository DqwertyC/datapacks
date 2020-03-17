execute as @e[type=minecraft:experience_bottle] at @s if entity @e[tag=enchanting_table,distance=..2] unless entity @e[tag=charging,distance=..3] run function enders_reach:check_crafting
execute as @e[tag=charging] at @s run function enders_reach:drain_experience

execute at @a run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:structure_void
execute as @a[scores={sneaking=1..},nbt={Inventory:[{Slot:102b,tag:{EnderReach:1b}}]}] positioned as @s rotated as @s run function enders_reach:choose_position
scoreboard players reset @a sneaking