execute at @a run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:structure_void
execute as @a[scores={sneaking=1..}] positioned as @s rotated as @s run function crouch_place:choose_position
scoreboard players reset @a sneaking