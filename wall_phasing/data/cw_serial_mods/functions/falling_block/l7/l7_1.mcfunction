execute if score block bsc matches 0 run summon minecraft:falling_block ~ ~ ~ {Time:2,NoGravity:1b,Tags:["new_block","phased_block"],BlockState:{Name:"minecraft:air"}}
execute if score block bsc matches 1 run summon minecraft:falling_block ~ ~ ~ {Time:2,NoGravity:1b,Tags:["new_block","phased_block"],BlockState:{Name:"minecraft:stone"}}
