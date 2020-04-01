#Create new falling blocks
execute as @a[tag=can_phase,gamemode=!spectator] at @s rotated ~ 0 positioned ^ ^1.5 ^0 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ #glowing_ii:stable run function cw_serial_mods:falling_block
execute as @a[tag=can_phase,gamemode=!spectator] at @s rotated ~ 0 positioned ^ ^0.5 ^0 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ #glowing_ii:stable run function cw_serial_mods:falling_block
execute as @a[tag=can_phase,gamemode=!spectator] at @s rotated ~ 0 positioned ^ ^1.5 ^0.5 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ #glowing_ii:stable run function cw_serial_mods:falling_block
execute as @a[tag=can_phase,gamemode=!spectator] at @s rotated ~ 0 positioned ^ ^0.5 ^0.5 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ #glowing_ii:stable run function cw_serial_mods:falling_block

#Keep phased blocks alive
execute as @e[tag=phased_block,nbt={Time:200}] at @s run data modify entity @s Time set value 100