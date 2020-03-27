# Fix the contents of the enchanting frames. Items will still be dropped if the table is broken, but XP won't be recovered.
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:1b},sort=nearest,limit=1] Fixed set value 1b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b},sort=nearest,limit=1] Fixed set value 1b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b},sort=nearest,limit=1] Fixed set value 1b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b},sort=nearest,limit=1] Fixed set value 1b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b},sort=nearest,limit=1] Fixed set value 1b

# Destroy the xp bottle
kill @e[type=experience_bottle,distance=..3]

# Set the top slot to "charging" mode
tag @e[type=item_frame,tag=enchanting_slot,nbt={Facing:1b},sort=nearest,limit=1] add rabbit_leap_ii_charging

# Play a sound to indicate the start of enchanting
playsound entity.lightning_bolt.thunder block @p ~ ~ ~ 4 0.5