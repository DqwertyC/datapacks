data modify entity @s[nbt=!{Item:{tag:{EnderReach:1b}}}] Item.tag.Enchantments append value {}
data modify entity @s[nbt=!{Item:{tag:{EnderReach:1b}}}] Item.tag.display.Lore prepend value "[{\"text\":\"Ender Reach\",\"italic\":false,\"color\":\"gray\"}]"
data modify entity @s[nbt=!{Item:{tag:{EnderReach:1b}}}] Item.tag.EnderReach set value 1b

data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b},sort=nearest,limit=1] Item.Count set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b},sort=nearest,limit=1] Item.Count set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b},sort=nearest,limit=1] Item.Count set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b},sort=nearest,limit=1] Item.Count set value 0b

data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:1b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b},sort=nearest,limit=1] Fixed set value 0b

scoreboard players reset @s xp_filled
tag @s remove charging