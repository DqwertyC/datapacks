execute store result score @s xp_point_drain run xp query @p[distance=..3] points
execute store result score @s xp_level_drain run xp query @p[distance=..3] levels
scoreboard players operation @s xp_total_drain = @s xp_point_drain
scoreboard players operation @s xp_total_drain += @s xp_level_drain

execute if entity @s[scores={xp_total_drain=1..}] run scoreboard players add @s xp_filled 1
execute if entity @s[scores={xp_total_drain=1..}] run xp add @p[distance=..3] -1 points
execute if entity @s[scores={xp_total_drain=1..}] run playsound entity.experience_orb.pickup block @p ~ ~ ~

execute if entity @s[scores={xp_filled=1}] run playsound minecraft:block.portal.ambient ambient @a ~ ~ ~
execute if entity @s[scores={xp_filled=1..24}] run particle minecraft:totem_of_undying ~ ~ ~ 0.20 1 0.20 0 1 force
execute if entity @s[scores={xp_filled=25..49}] run particle minecraft:totem_of_undying ~ ~ ~ 0.20 1 0.20 0 2 force
execute if entity @s[scores={xp_filled=50..74}] run particle minecraft:totem_of_undying ~ ~ ~ 0.20 1 0.20 0 4 force
execute if entity @s[scores={xp_filled=75..99}] run particle minecraft:totem_of_undying ~ ~ ~ 0.20 1 0.20 0 8 force

execute if entity @s[scores={xp_filled=75}] run playsound minecraft:block.portal.ambient ambient @a ~ ~ ~
execute if entity @s[scores={xp_filled=100..124}] run particle minecraft:totem_of_undying ~ ~ ~ 0.20 1 0.20 0 16 force
execute if entity @s[scores={xp_filled=125..149}] run particle minecraft:totem_of_undying ~ ~ ~ 0.20 1 0.20 0 32 force

execute if entity @s[scores={xp_filled=150}] run playsound entity.lightning_bolt.thunder block @p ~ ~ ~ 4 2
execute if entity @s[scores={xp_filled=150..}] run function enders_reach:enchant_item
