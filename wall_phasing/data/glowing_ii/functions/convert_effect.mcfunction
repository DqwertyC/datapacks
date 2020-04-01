summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["glow_convert"],Effects:[{Id:14,Duration:20,Amplifier:1}],WaitTime:0,Duration:6}
execute store result entity @e[tag=glow_convert,limit=1] Effects[0].Duration int 1 run data get entity @s ActiveEffects[{Id:24b,Amplifier:1b}].Duration
effect clear @s minecraft:glowing