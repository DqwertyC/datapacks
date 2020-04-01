# datapacks
A collection of my Minecraft datapacks.
Each folder is it's own separate pack and can be placed in the "datapacks" folder of your world save.

**crouch_to_place**  
*min version: 1.15*  
This datapack will allow players to place blocks in midair while sneaking. If you want to limit the players that can use this ability, the main target selector is in scoreboard_check.mcfunction.

**uuid_utils**  
*min version: 20w12a*  
This datapack uses the new UUID format introduced in 20w12a (An array of Integers, instead of 2 Longs) to store entity uuid and owner uuid data as scoreboard scores.

**custom_enchanting**  
*min version: 20w11a*  
This datapack provides a method to create custom enchantments. Throw an XP Bottle at an enchantment table, and it should activate. Place materials around the sides of the table and the item to enchant on top, then throw another XP Bottle at it.  

**enders_reach**  
*min version: 20w11a*  
Uses the custom_enchanting datapack above to create armor that allows the wearer to place blocks in midair. Any chestplate can be enchanted, and it costs 4 Eyes of Ender and 150 XP points (~1 level at level 30). When wearing, the player can crouch to see outlines of nearby air spaces, and other blocks can be placed there.

**tp_trident**  
*min version: 20w12a*  
Uses the custom_enchanting and uuid_utils datapacks above to create a trident that teleports the player to itself when it hits the ground or an entity. It costs 1 elytra, 2 ender pearls, and 1 Feather Falling IV book to enchant.

**wall_phasing**  
*min version:15.2*  
A datapack that adds Potions of Intangibility (aka Glowing II). Players with Intangibility can sneak to walk through walls. Throw a blaze powder, a chorus plant, and awkward potions in a cauldron, place glowstone over the top, and shoot it with a spectral arrow to craft. Also works with redstone and or gunpowder to make extended potions and splash potions. Having Invisibilty with Glowing II will supress the glowing effect but still allow sneaking through walls.

Requires wall_phasing_z.zip.
Requires Cloud Wolf's Block Serializer: https://www.youtube.com/watch?v=_W_ojAgI9oY


**blazes_touch_base**  
*min version: 20w11a*  
A simple loot-table based autosmelt datapack. Part of a tutorial on integrating datapacks with the custom_enchanting datapack.  

**blazes_touch_final**  
*min version: 20w11a*  
Uses the custom_enchanting datapack above to create pickaxes that automaticalls smelt stone and ores. Part of a tutorial on integrating datapacks with the custom_enchanting datapack.

# Feedback
Please notify me if you find any bugs or errors, or if you have usability suggestions.
