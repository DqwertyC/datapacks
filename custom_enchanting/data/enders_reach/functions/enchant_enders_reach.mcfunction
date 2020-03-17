data modify entity @s[nbt=!{Item:{tag:{EnderReach:1b}}}] Item.tag.Enchantments append value {}
data modify entity @s[nbt=!{Item:{tag:{EnderReach:1b}}}] Item.tag.display.Lore prepend value "[{\"text\":\"Ender Reach\",\"italic\":false,\"color\":\"gray\"}]"
data modify entity @s[nbt=!{Item:{tag:{EnderReach:1b}}}] Item.tag.EnderReach set value 1b