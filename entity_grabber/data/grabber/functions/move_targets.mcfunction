function uuid_utils:get_owned

execute if entity @s[tag=grabber_1,x_rotation=73..90] anchored feet rotated ~ 0 positioned ^ ^ ^0 align xz positioned ~0.5 ~ ~0.5 run tp @e[scores={target_0=0,target_1=0,target_2=0,target_3=0},tag=grabbed] ~ ~ ~ ~ ~
execute if entity @s[tag=grabber_1,x_rotation=47..73] anchored feet rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run tp @e[scores={target_0=0,target_1=0,target_2=0,target_3=0},tag=grabbed] ~ ~ ~ ~ ~
execute if entity @s[tag=grabber_1,x_rotation=33..47] anchored feet rotated ~ 0 positioned ^ ^ ^2 align xz positioned ~0.5 ~ ~0.5 run tp @e[scores={target_0=0,target_1=0,target_2=0,target_3=0},tag=grabbed] ~ ~ ~ ~ ~
execute if entity @s[tag=grabber_1,x_rotation=25..33] anchored feet rotated ~ 0 positioned ^ ^ ^3 align xz positioned ~0.5 ~ ~0.5 run tp @e[scores={target_0=0,target_1=0,target_2=0,target_3=0},tag=grabbed] ~ ~ ~ ~ ~
execute if entity @s[tag=grabber_1,x_rotation=20..25] anchored feet rotated ~ 0 positioned ^ ^ ^4 align xz positioned ~0.5 ~ ~0.5 run tp @e[scores={target_0=0,target_1=0,target_2=0,target_3=0},tag=grabbed] ~ ~ ~ ~ ~
execute if entity @s[tag=grabber_1,x_rotation=-90..20] anchored feet rotated ~ 0 positioned ^ ^ ^5 align xz positioned ~0.5 ~ ~0.5 run tp @e[scores={target_0=0,target_1=0,target_2=0,target_3=0},tag=grabbed] ~ ~ ~ ~ ~

execute unless entity @e[scores={target_0=0,target_1=0,target_2=0,target_3=0},tag=grabbed] run function grabber:release