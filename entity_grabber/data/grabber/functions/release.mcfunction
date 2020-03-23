say Releasing!
scoreboard players reset @s used_cos

function uuid_utils:get_owned

scoreboard players reset @e[scores={target_0=0,target_1=0,target_2=0,target_3=0}] owner_0
scoreboard players reset @e[scores={target_0=0,target_1=0,target_2=0,target_3=0}] owner_1
scoreboard players reset @e[scores={target_0=0,target_1=0,target_2=0,target_3=0}] owner_2
scoreboard players reset @e[scores={target_0=0,target_1=0,target_2=0,target_3=0}] owner_3

tag @e[scores={target_0=0,target_1=0,target_2=0,target_3=0}] remove owner_ok
tag @e[scores={target_0=0,target_1=0,target_2=0,target_3=0}] remove grabbed

tag @s remove grabber_1
tag @s add grabber_0