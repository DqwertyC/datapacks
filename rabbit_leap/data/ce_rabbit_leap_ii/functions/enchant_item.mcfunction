# Add the "enchantment" to the item.
# Will cause issues if other custom_enchants are added between Rabbit I and Rabbit II
data modify entity @s[nbt={Item:{tag:{RabbitLeap:1b}}}] Item.tag.display.Lore[0] set value "[{\"text\":\"Rabbit Leap II\",\"italic\":false,\"color\":\"gray\"}]"
data modify entity @s[nbt={Item:{tag:{RabbitLeap:1b}}}] Item.tag.RabbitLeap set value 2b

# Remove the items from the surrounding frames
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b},sort=nearest,limit=1] Item.Count set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b},sort=nearest,limit=1] Item.Count set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b},sort=nearest,limit=1] Item.Count set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b},sort=nearest,limit=1] Item.Count set value 0b

# Make it so players can interract with the frames again.
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:1b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b},sort=nearest,limit=1] Fixed set value 0b

# Reset scores and tags.
scoreboard players reset @s xp_filled
tag @s remove rabbit_leap_ii_charging