# Get entity UUID's
execute as @e[tag=!uuid_ok] store result score @s uuid_0 run data get entity @s UUID[0]
execute as @e[tag=!uuid_ok] store result score @s uuid_1 run data get entity @s UUID[1]
execute as @e[tag=!uuid_ok] store result score @s uuid_2 run data get entity @s UUID[2]
execute as @e[tag=!uuid_ok] store result score @s uuid_3 run data get entity @s UUID[3]
execute as @e[tag=!uuid_ok] run tag @s add uuid_ok

execute as @e[tag=!owner_ok] store result score @s owner_0 run data get entity @s Owner[0]
execute as @e[tag=!owner_ok] store result score @s owner_1 run data get entity @s Owner[1]
execute as @e[tag=!owner_ok] store result score @s owner_2 run data get entity @s Owner[2]
execute as @e[tag=!owner_ok] store result score @s owner_3 run data get entity @s Owner[3]
execute as @e[tag=!owner_ok] run tag @s add owner_ok