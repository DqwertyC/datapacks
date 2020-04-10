#Detect chorus fruit on the ground near brewing stands
kill @e[tag=used] 
execute as @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit"}}] at @s if block ~ ~ ~ minecraft:brewing_stand unless entity @e[tag=brewing_entity,distance=...5] run function custom_brewing:summon_stand_entity

#Kill brewing entities that don't have stands anymore
execute as @e[tag=brewing_entity] at @s unless block ~ ~ ~ minecraft:brewing_stand run kill @s

#Move ingredients into the brewing stand
execute as @e[tag=brewing_entity] at @s unless data block ~ ~ ~ Items[{Slot:3b}] if entity @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit"}},distance=..1] run function custom_brewing:add_ingredient
execute as @e[tag=brewing_entity] at @s run function custom_brewing:check_brewing
