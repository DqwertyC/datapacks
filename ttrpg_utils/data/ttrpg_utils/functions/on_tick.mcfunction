# Check for dice rolls
scoreboard players reset @a dice_sides
execute as @a[scores={used_item=1..},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"d4\"}"}}}}] run scoreboard players set @s dice_sides 4
execute as @a[scores={used_item=1..},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"d6\"}"}}}}] run scoreboard players set @s dice_sides 6
execute as @a[scores={used_item=1..},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"d8\"}"}}}}] run scoreboard players set @s dice_sides 8
execute as @a[scores={used_item=1..},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"d10\"}"}}}}] run scoreboard players set @s dice_sides 10
execute as @a[scores={used_item=1..},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"d12\"}"}}}}] run scoreboard players set @s dice_sides 12
execute as @a[scores={used_item=1..},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"d20\"}"}}}}] run scoreboard players set @s dice_sides 20
execute as @a[scores={used_item=1..},nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Clear\"}"}}}}] run function ttrpg_utils:clear_dice
execute as @a[scores={dice_sides=1..}] at @s run function ttrpg_utils:spawn_die
scoreboard players reset @a used_item

execute as @e[type=item] if data entity @s Item.tag.Rolled 