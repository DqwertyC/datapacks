# These lines are for the actual enchantment.
execute as @e[type=trident,nbt={DealtDamage:1b,Trident:{tag:{Teleportation:1b}}},tag=!teleported] at @s run function uuid_utils:teleport_owner
execute as @e[type=trident,nbt={inGround:1b,Trident:{tag:{Teleportation:1b}}},tag=!teleported] at @s run function uuid_utils:teleport_owner
tag @e[type=trident,nbt={DealtDamage:1b,Trident:{tag:{Teleportation:1b}}},tag=!teleported] add teleported
tag @e[type=trident,nbt={inGround:1b,Trident:{tag:{Teleportation:1b}}},tag=!teleported] add teleported