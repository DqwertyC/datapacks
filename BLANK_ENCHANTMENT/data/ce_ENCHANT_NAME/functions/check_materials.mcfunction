# Counters for different items.
scoreboard players reset @s item_1
scoreboard players reset @s item_2
scoreboard players reset @s item_3
scoreboard players reset @s item_4

# Count each item type
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:ITEM_1"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:ITEM_1"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:ITEM_1"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:ITEM_1"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1

execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:ITEM_2"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:ITEM_2"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:ITEM_2"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:ITEM_2"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1

execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:ITEM_3"}},sort=nearest,limit=1] run scoreboard players add @s item_3 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:ITEM_3"}},sort=nearest,limit=1] run scoreboard players add @s item_3 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:ITEM_3"}},sort=nearest,limit=1] run scoreboard players add @s item_3 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:ITEM_3"}},sort=nearest,limit=1] run scoreboard players add @s item_3 1

execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:ITEM_4"}},sort=nearest,limit=1] run scoreboard players add @s item_4 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:ITEM_4"}},sort=nearest,limit=1] run scoreboard players add @s item_4 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:ITEM_4"}},sort=nearest,limit=1] run scoreboard players add @s item_4 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:ITEM_4"}},sort=nearest,limit=1] run scoreboard players add @s item_4 1

# Copy the item in the top enchanting slot to the armor stand's hand.
data modify entity @s HandItems[0] set from entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:1b},sort=nearest,limit=1] Item
execute unless data entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:1b},sort=nearest,limit=1] Item run data modify entity @s HandItems[0] set value {}

# Check if we're good to enchant. If so, lock the frames. This will trigger the XP drain.
execute if predicate ce_ENCHANTMENT_NAME:contains_enchantable if entity @s[scores={item_1=1,item_2=1,item_3=1,item_4=1}] run function ce_ENCHANTMENT_NAME:lock_frames
kill @s