# These lines are for the actual enchantment.
execute at @a run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:structure_void
execute as @a[scores={sneaking=1..},nbt={Inventory:[{Slot:102b,tag:{EnderReach:1b}}]}] positioned as @s rotated as @s run function enders_reach:choose_position
scoreboard players reset @a sneaking