tag @s add active

execute if entity @s[scores={dice_sides=4}] anchored eyes run loot spawn ^ ^ ^2 loot ttrpg_utils:d4
execute if entity @s[scores={dice_sides=6}] anchored eyes run loot spawn ^ ^ ^2 loot ttrpg_utils:d6
execute if entity @s[scores={dice_sides=8}] anchored eyes run loot spawn ^ ^ ^2 loot ttrpg_utils:d8
execute if entity @s[scores={dice_sides=10}] anchored eyes run loot spawn ^ ^ ^2 loot ttrpg_utils:d10
execute if entity @s[scores={dice_sides=12}] anchored eyes run loot spawn ^ ^ ^2 loot ttrpg_utils:d12
execute if entity @s[scores={dice_sides=20}] anchored eyes run loot spawn ^ ^ ^2 loot ttrpg_utils:d20

execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}}] unless data entity @s Item.tag.Rolled run data modify entity @s Item.tag.Rolled set from entity @s Item.Count
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}}] if data entity @s Item.tag.Rolled run data modify entity @s Item.Count set value 1b
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}}] if data entity @s Item.tag.Rolled run data modify entity @s PickupDelay set value 32767

execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}}] unless data entity @s Owner run data modify entity @s Owner set from entity @e[tag=active,limit=1] UUID

tag @s remove active