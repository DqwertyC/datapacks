# Get entity UUID's
execute as @a[scores={used_cos=1..},nbt={SelectedItem:{tag:{CustomModelData:1}}},tag=grabber_0] at @s if entity @e[type=#grabber:can_grab,distance=..3,sort=nearest,limit=1] run function grabber:grab
execute as @a[scores={used_cos=1..},nbt={SelectedItem:{tag:{CustomModelData:1}}},tag=grabber_1] at @s run function grabber:release

execute as @a[tag=!grabber_0] at @s run function grabber:move_targets