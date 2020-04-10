execute unless entity @s[tag=brewing] store result score @s brew_time run data get block ~ ~ ~ BrewTime

execute unless entity @s[tag=brewing] unless entity @s[scores={brew_time=1..}] run function custom_brewing:validate_brewing
execute if entity @s[tag=brewing] unless data block ~ ~ ~ Items[{Slot:3b}] run function custom_brewing:cancel_brewing

execute if entity @s[tag=brewing] run scoreboard players remove @s brew_time 1
execute if entity @s[tag=brewing] store result block ~ ~ ~ BrewTime int 1 run scoreboard players get @s brew_time
execute if entity @s[scores={brew_time=2}] run function custom_brewing:brew_potions
execute if entity @s[scores={brew_time=0},tag=needs_decrement] store result block ~ ~ ~ Items[{Slot:3b}].Count int 1 run scoreboard players get @s counter
tag @s[scores={brew_time=0}] remove needs_decrement