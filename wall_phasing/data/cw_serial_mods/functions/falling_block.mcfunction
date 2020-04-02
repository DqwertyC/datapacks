function cw_serializer:read

execute if score block bsc matches 0..1420 run function cw_serial_mods:falling_block/l1/l1_1
execute if score block bsc matches 1421..5137 run function cw_serial_mods:falling_block/l1/l1_2
execute if score block bsc matches 5138..7330 run function cw_serial_mods:falling_block/l1/l1_3
execute if score block bsc matches 7331..8801 run function cw_serial_mods:falling_block/l1/l1_4
execute if score block bsc matches 8802..11336 run function cw_serial_mods:falling_block/l1/l1_5

data modify entity @e[tag=new_block,limit=1] TileEntityData merge from storage cw_serializer:nbt nbt
scoreboard players operation @e[tag=new_block] bsc = block bsc
tag @e[tag=new_block] remove new_block

setblock ~ ~ ~ minecraft:air