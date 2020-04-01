tag @s add repulsor
execute as @e[tag=!can_phase,tag=!repulsor,tag=!phased_block,distance=..1] at @e[tag=repulsor,limit=1] facing entity @s eyes rotated ~ 0 positioned ^ ^ ^1 rotated as @s run tp ~ ~ ~
tag @s remove repulsor