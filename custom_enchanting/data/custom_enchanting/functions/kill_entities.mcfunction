execute as @e[type=item_frame,tag=enchanting_slot,distance=..1] at @s run function custom_enchanting:frame_drop_item
kill @s
playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 2 1