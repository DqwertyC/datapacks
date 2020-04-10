# Custom Enchanting
This tutorial will walk you through creating your own Custom Enchantment data pack compatible with my [Custom Enchanting]() datapack.

## Folder Structure
Before getting started, it's best to know where and what everything is. This list contains a brief description of the files and folders in the datapack, as well as what changes need to be made to each one.
  
  
### BLANK_ENCHANTMENT
This is the root folder. It should be renamed to match the name of your enchantment.

### ./pack.mcmeta
This is the datapack metadata. You should edit it to describe your enchantment.

### ./data/ENCHANT_NAME
This folder is where you'll put all of the functionality of your enchantment. You'll want to rename the folder to something that describes your enchantment.

### ./data/ENCHANT_NAME/functions/on_tick.mcfunction
This is just a placeholder function to check for players wearing/holding the enchanted item. It has sample target selectors for checking each armor slot, as well as mainhand/offhand detection. Just delete the lines that don't make sense for your enchantment, and update ENCHANTMENT_NAME to match your enchantment name. This is where you should put your commands to make whatever it is your enchantment does work.

### ./data/ce_ENCHANT_NAME
This folder contains the functionality that links this datapack to the Custom Enchanting datapack. Rename it to describe your enchantment, but leave the "ce_" at the front.

### ./data/ce_ENCHANT_NAME/tags/items/can_enchant.json
This file contains a list of all the items you can enchant. The example contains all of the default chest armor. Update it to match the armor and/or tools that you want your enchantment to go on.

### ./data/ce_ENCHANT_NAME/predicates/contains_enchantable.json
This file describes a predicate that checks if an item is included in the can_enchant tag above. **One** instance of ENCHANTMENT_NAME that needs to be replaced with your enchantment name.

### ./data/ce_ENCHANT_NAME/functions/on_tick.mcfunction
This function checks for thrown experience bottles to trigger the start of the enchanting process. If you want, this is where you would change the trigger (i.e. you could require a snowball instead of another XP bottle). This file has **six** instances of ENCHANTMENT_NAME that need to be replaced with your enchantment name. 

### ./data/ce_ENCHANT_NAME/functions/check_materials.mcfunction
This function checks the enchanting table to see if it has the correct materials around it. Replace ITEM_1 through ITEM_4 with the different items you want. If you want more than one of an item, remove the lines counting extra items.  
  
The second to last line of this file also has to be changed. There are **two** instances of ENCHANTMENT_NAME that need to be replaced with your enchantment name. The scores in the target selector also need to be updated to match your desired item counts, and extra scores removed.

#### Examples:
##### Just Eyes of Ender:
````
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:ender_eye"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
.
.
.
execute if predicate ce_ENCHANTMENT_NAME:contains_enchantable if entity @s[scores={item_1=4}] run function ce_ENCHANTMENT_NAME:lock_frames
````
##### 3 Magma and 1 Blue Ice:
````
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:magma_block"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:magma_block"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:magma_block"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:magma_block"}},sort=nearest,limit=1] run scoreboard players add @s item_1 1

execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b,Item:{id:"minecraft:blue_ice"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b,Item:{id:"minecraft:blue_ice"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b,Item:{id:"minecraft:blue_ice"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1
execute if entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b,Item:{id:"minecraft:blue_ice"}},sort=nearest,limit=1] run scoreboard players add @s item_2 1
.
.
.
execute if predicate ce_ENCHANTMENT_NAME:contains_enchantable if entity @s[scores={item_1=3,item_2=1}] run function ce_ENCHANTMENT_NAME:lock_frames
````
### ./data/ce_ENCHANT_NAME/functions/lock_frames.mcfunction
This function starts the enchanting process and makes sure that enchanting items aren't removed from the frames during the process. Only **one** instance of ENCHANTMENT_NAME that needs replaced.

### ./data/ce_ENCHANT_NAME/functions/drain_experience.mcfunction
This function drains the experience from the nearest player until it has enough to enchant the item. The only necessary change in this file is **one** instance of ENCHANTMENT_NAME that needs to be replaced with your enchantment name. If you want, you can change the target scores to increase/decrease the required XP, as well as the sounds or particles.

### ./data/ce_ENCHANT_NAME/functions/enchant_item.mcfunction
This function "enchants" the item. There are **five** instances of ENCHANTMENT_NAME that need replaced.

### ./data/minecraft/tags/functions/tick.json
This file contains a list of functions to run every tick. This is basically the same as having a command in a repeating command block. Just **two** instances of ENCHANTMENT_NAME that need to be replaced.
