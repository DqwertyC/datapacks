scoreboard players reset @s used_cos

execute anchored eyes positioned ^ ^ ^1 as @e[type=#grabber:can_grab,distance=..2,sort=nearest,limit=1] run tag @s add target
execute unless score @s player_no = @e[tag=target,limit=1] player_no run tag @e[tag=target] remove target

scoreboard players operation @e[tag=target] owner_0 = @s uuid_0
scoreboard players operation @e[tag=target] owner_1 = @s uuid_1
scoreboard players operation @e[tag=target] owner_2 = @s uuid_2
scoreboard players operation @e[tag=target] owner_3 = @s uuid_3

tag @s remove grabber_0
tag @s add grabber_1

tag @e[tag=target] add grabbed
tag @e[tag=target] remove target