summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100s,Radius:0.01,Particle:"soul_fire_flame",Tags:["enchanting_table"]}

summon minecraft:item_frame ~00 ~01 ~00 {Tags:["enchanting_slot","watches_player"],Invisible:1b,Facing:1b}
summon minecraft:item_frame ~00 ~00 ~-1 {Tags:["enchanting_slot"],Invisible:1b,Facing:2b}
summon minecraft:item_frame ~00 ~00 ~01 {Tags:["enchanting_slot"],Invisible:1b,Facing:3b}
summon minecraft:item_frame ~-1 ~00 ~00 {Tags:["enchanting_slot"],Invisible:1b,Facing:4b}
summon minecraft:item_frame ~01 ~00 ~00 {Tags:["enchanting_slot"],Invisible:1b,Facing:5b}

playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~ ~