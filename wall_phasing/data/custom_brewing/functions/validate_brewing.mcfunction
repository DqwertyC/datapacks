execute store result score @s counter run data get block ~ ~ ~ Fuel

# Any valid Invisibility -> Intangibility combination
execute if entity @s[scores={counter=1..}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:chorus_fruit"},{Slot:0b,tag:{Potion:"minecraft:invisibility"}}]} run function custom_brewing:start_brewing
execute if entity @s[scores={counter=1..}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:chorus_fruit"},{Slot:0b,tag:{Potion:"minecraft:long_invisibility"}}]} run function custom_brewing:start_brewing
execute if entity @s[scores={counter=1..}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:chorus_fruit"},{Slot:1b,tag:{Potion:"minecraft:invisibility"}}]} run function custom_brewing:start_brewing
execute if entity @s[scores={counter=1..}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:chorus_fruit"},{Slot:1b,tag:{Potion:"minecraft:long_invisibility"}}]} run function custom_brewing:start_brewing
execute if entity @s[scores={counter=1..}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:chorus_fruit"},{Slot:2b,tag:{Potion:"minecraft:invisibility"}}]} run function custom_brewing:start_brewing
execute if entity @s[scores={counter=1..}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:chorus_fruit"},{Slot:2b,tag:{Potion:"minecraft:long_invisibility"}}]} run function custom_brewing:start_brewing

# Any valid Normal -> Long combination
execute if entity @s[scores={counter=1..}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:redstone"},{Slot:0b,tag:{CustomPotionEffects:[{Id:14,Duration:1200,Amplifier:1}]}}]} run function custom_brewing:start_brewing
execute if entity @s[scores={counter=1..}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:redstone"},{Slot:1b,tag:{CustomPotionEffects:[{Id:14,Duration:1200,Amplifier:1}]}}]} run function custom_brewing:start_brewing
execute if entity @s[scores={counter=1..}] if block ~ ~ ~ minecraft:brewing_stand{Items:[{Slot:3b,id:"minecraft:redstone"},{Slot:2b,tag:{CustomPotionEffects:[{Id:14,Duration:1200,Amplifier:1}]}}]} run function custom_brewing:start_brewing