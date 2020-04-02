execute positioned ~ ~-1 ~ as @e[type=item,nbt={Item:{id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}},distance=..0.5,limit=3] run function glowing_ii:convert_potion

execute positioned ~ ~-1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},distance=..0.5,limit=1]
execute positioned ~ ~-1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit"}},distance=..0.5,limit=1]
execute positioned ~ ~-1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..0.5,limit=1]
execute positioned ~ ~-1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}},distance=..0.5,limit=1]
playsound minecraft:block.glass.break block @a ~ ~ ~ 1 0.25
particle minecraft:block minecraft:glowstone ~ ~ ~ 0 0 0 0 30 force @a
setblock ~ ~-1 ~ minecraft:cauldron[level=0]
setblock ~ ~ ~ air
kill @s