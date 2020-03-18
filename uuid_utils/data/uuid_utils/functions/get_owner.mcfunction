# Usage: /execute as @e[a single entity with an owner uuid] run function uuid:get_owner
# The owner of the entity will have their target_[0-3] scores set to 0.

scoreboard players set @e target_0 1
scoreboard players set @e target_1 1
scoreboard players set @e target_2 1
scoreboard players set @e target_3 1

execute as @e run scoreboard players operation @s target_0 = @s uuid_0
execute as @e run scoreboard players operation @s target_1 = @s uuid_1
execute as @e run scoreboard players operation @s target_2 = @s uuid_2
execute as @e run scoreboard players operation @s target_3 = @s uuid_3

scoreboard players operation @e target_0 -= @s owner_0
scoreboard players operation @e target_1 -= @s owner_1
scoreboard players operation @e target_2 -= @s owner_2
scoreboard players operation @e target_3 -= @s owner_3
