# Get the current rabbit_leap level for all players 
execute as @a store result score @s rabbit_leap_lvl run data get entity @s Inventory[{Slot:101b}].tag.RabbitLeap

execute as @a[scores={rabbit_sneaking=0}] run scoreboard players set @s rabbit_sneak 0
execute as @a[scores={rabbit_sneaking=1}] run scoreboard players add @s rabbit_sneak 1
execute as @a[scores={rabbit_sneaking=1}] run scoreboard players set @s rabbit_sneaking 0
execute as @a[nbt={OnGround:0b}] run scoreboard players set @s rabbit_sneak 0

execute as @a[scores={rabbit_leap_lvl=1..,rabbit_sneak=10}] at @s run playsound minecraft:block.note_block.harp neutral @s ~ ~ ~ 1 0.8
execute as @a[scores={rabbit_leap_lvl=1..,rabbit_sneak=10}] at @s run playsound minecraft:block.note_block.harp neutral @s ~ ~ ~ 1 0.4

execute as @a[scores={rabbit_leap_lvl=2..,rabbit_sneak=40}] at @s run playsound minecraft:block.note_block.harp neutral @s ~ ~ ~ 1 1.0
execute as @a[scores={rabbit_leap_lvl=2..,rabbit_sneak=40}] at @s run playsound minecraft:block.note_block.harp neutral @s ~ ~ ~ 1 0.5

execute as @a[scores={rabbit_leap_lvl=3..,rabbit_sneak=70}] at @s run playsound minecraft:block.note_block.harp neutral @s ~ ~ ~ 1 1.4
execute as @a[scores={rabbit_leap_lvl=3..,rabbit_sneak=70}] at @s run playsound minecraft:block.note_block.harp neutral @s ~ ~ ~ 1 0.7

effect give @a[scores={rabbit_leap_lvl=1..,rabbit_sneak=10..}] minecraft:jump_boost 1 0 true
effect give @a[scores={rabbit_leap_lvl=2..,rabbit_sneak=40..}] minecraft:jump_boost 1 2 true
effect give @a[scores={rabbit_leap_lvl=3..,rabbit_sneak=70..}] minecraft:jump_boost 1 4 true

effect clear @a[nbt={OnGround:0b,ActiveEffects:[{ShowIcon:0b,ShowParticles:0b,Id:8b}]}] minecraft:jump_boost

