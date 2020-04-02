execute if entity @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..0.5] run tag @s add long
execute if entity @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}},distance=..0.5] run tag @s add splash

execute if entity @s[tag=!long,tag=!splash] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionEffects:[{Id:24,Duration:1200,ShowParticles:0b,Amplifier:1}],CustomPotionColor:16449030,display:{Name:"{\"text\":\"Potion of Intangibility\",\"italic\":\"false\"}"}}}}
execute if entity @s[tag=long,tag=!splash] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionEffects:[{Id:24,Duration:3200,ShowParticles:0b,Amplifier:1}],CustomPotionColor:16449030,display:{Name:"{\"text\":\"Potion of Intangibility\",\"italic\":\"false\"}"}}}}
execute if entity @s[tag=!long,tag=splash] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:24,Duration:3200,ShowParticles:0b,Amplifier:1}],CustomPotionColor:16449030,display:{Name:"{\"text\":\"Potion of Intangibility\",\"italic\":\"false\"}"}}}}
execute if entity @s[tag=long,tag=splash] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:24,Duration:3200,ShowParticles:0b,Amplifier:1}],CustomPotionColor:16449030,display:{Name:"{\"text\":\"Potion of Intangibility\",\"italic\":\"false\"}"}}}}

kill @s