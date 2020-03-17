# Spawn in an item, change it to match the contents of the frame, then kill the frame.
execute if data entity @s Item run summon minecraft:item ^ ^ ^0.5 {Item:{id:"minecraft:stone",Count:1b},Tags:["new"]}
execute if data entity @s Item run data modify entity @e[type=item,sort=nearest,limit=1,tag=new] Item set from entity @s Item
kill @s