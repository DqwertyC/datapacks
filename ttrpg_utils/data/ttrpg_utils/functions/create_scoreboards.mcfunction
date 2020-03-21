# UUID of an entity
scoreboard objectives add uuid_0 dummy
scoreboard objectives add uuid_1 dummy
scoreboard objectives add uuid_2 dummy
scoreboard objectives add uuid_3 dummy

# UUID of an entity's owner
scoreboard objectives add owner_0 dummy
scoreboard objectives add owner_1 dummy
scoreboard objectives add owner_2 dummy
scoreboard objectives add owner_3 dummy

# UUID of an entity's owner
scoreboard objectives add target_0 dummy
scoreboard objectives add target_1 dummy
scoreboard objectives add target_2 dummy
scoreboard objectives add target_3 dummy

# Reset scores on reload, just to be safe
tag @e remove owner_ok
tag @e remove uuid_ok