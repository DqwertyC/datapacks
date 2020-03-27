# Counters for different items.
scoreboard players reset @s item_1
scoreboard players reset @s item_2
scoreboard players reset @s item_3
scoreboard players reset @s item_4

# Count Sticky Pistons
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:sticky_piston"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:sticky_piston"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:sticky_piston"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:sticky_piston"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1

# Count Slime Blocks
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:slime_block"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:slime_block"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:slime_block"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:slime_block"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1

# Count Nether Stars
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:nether_star"}},sort=nearest,limit=1] run scoreboard players add @s item_3 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:nether_star"}},sort=nearest,limit=1] run scoreboard players add @s item_3 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:nether_star"}},sort=nearest,limit=1] run scoreboard players add @s item_3 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:nether_star"}},sort=nearest,limit=1] run scoreboard players add @s item_3 1

#execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_4 1
#execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_4 1
#execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_4 1
#execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_4 1

# Copy the item in the top enchanting slot to the armor stand's hand.
data modify entity @s HandItems[0] set from entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:1b},sort=nearest,limit=1] Item
execute unless data entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:1b},sort=nearest,limit=1] Item run data modify entity @s HandItems[0] set value {}

# Check if we're good to enchant. If so, lock the frames. This will trigger the XP drain.
execute if predicate ce_rabbit_leap_iii:contains_enchantable if entity @s[scores={item_1=2,item_2=1,item_3=1},nbt={HandItems:[{tag:{RabbitLeap:2b}}]}] run function ce_rabbit_leap_iii:lock_frames
kill @s