#Detect players that can phase
#Glowing II and Invisibilty II grant wall phasing.
tag @a remove can_phase
tag @a[scores={phase_sneak=1..},nbt={ActiveEffects:[{Id:24b,Amplifier:1b}]}] add can_phase
tag @a[scores={phase_sneak=1..},nbt={ActiveEffects:[{Id:14b,Amplifier:1b}]}] add can_phase
scoreboard players reset @a phase_sneak

#Phase the appropriate blocks
execute if entity @p[tag=can_phase] run function glowing_ii:update_falling_blocks
execute as @e[tag=phased_block] at @s unless entity @e[tag=can_phase,distance=..2] run function cw_serial_mods:solidify_block

#Repulse non-phasing entities
execute as @e[tag=phased_block] at @s if entity @e[tag=!can_phase,distance=..1] run function glowing_ii:repel

#Convert Glowing II to Invisibility II
execute as @a[nbt={ActiveEffects:[{Id:24b,Amplifier:1b}]},nbt={ActiveEffects:[{Id:14b,Amplifier:0b}]}] at @s run function glowing_ii:convert_effect

#Look for proper brewing setups.
execute as @e[type=spectral_arrow,nbt={inBlockState:{Name:"minecraft:glowstone"}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function glowing_ii:start_potion
execute as @e[type=area_effect_cloud,tag=brewer,nbt={Age:40}] at @s run function glowing_ii:create_potions

#Make items sit in cauldrons longer
execute as @e[type=item,tag=!extended] at @s if block ~ ~ ~ minecraft:cauldron[level=3] run data modify entity @s PickupDelay set value 100
execute as @e[type=item,tag=!extended] at @s if block ~ ~ ~ minecraft:cauldron[level=3] run tag @s add extended