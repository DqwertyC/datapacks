tag @s[tag=!potion_done] add valid_potion
execute unless block ~ ~ ~ minecraft:glowstone run tag @s remove valid_potion
execute unless block ~ ~-1 ~ minecraft:cauldron[level=3] run tag @s remove valid_potion
execute positioned ~ ~-1 ~ unless entity @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},distance=..0.5] run tag @s remove valid_potion
execute positioned ~ ~-1 ~ unless entity @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit"}},distance=..0.5] run tag @s remove valid_potion
execute positioned ~ ~-1 ~ unless entity @e[type=item,nbt={Item:{id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}},distance=..0.5] run tag @s remove valid_potion

execute if entity @s[tag=valid_potion] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:60,Tags:[brewer]} 
execute if entity @s[tag=valid_potion] run playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 0.5

kill @s[tag=valid_potion]
