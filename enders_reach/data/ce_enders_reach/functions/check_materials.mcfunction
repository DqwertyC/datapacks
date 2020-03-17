# Counters for different items. We'll only be using item_1 here, since the enchantment takes 4 eyes of ender.
scoreboard players reset @s item_1
scoreboard players reset @s item_2
scoreboard players reset @s item_3
scoreboard players reset @s item_4

# Check the counts of the items on the sides.
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1

# Copy the item in the top enchanting slot to the armor stand's hand.
data modify entity @s HandItems[0] set from entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:1b},sort=nearest,limit=1] Item
execute unless data entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:1b},sort=nearest,limit=1] Item run data modify entity @s HandItems[0] set value {}

# Check if we're good to enchant. If so, lock the frames. This will trigger the XP drain.
execute if predicate ce_enders_reach:contains_enchantable if entity @s[scores={item_1=4}] run function ce_enders_reach:lock_frames
kill @e[type=experience_bottle,distance=..3]
kill @s