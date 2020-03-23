# Get entity UUID's
execute as @a[scores={used_cos=1..},nbt={SelectedItem:{tag:{CustomModelData:1}}},tag=grabber_0] at @s run function grabber:grab
execute as @a[scores={used_cos=1..},nbt={SelectedItem:{tag:{CustomModelData:1}}},tag=grabber_1] at @s run function grabber:release

execute as @a[tag=!grabber_0] at @s run function grabber:move_targets