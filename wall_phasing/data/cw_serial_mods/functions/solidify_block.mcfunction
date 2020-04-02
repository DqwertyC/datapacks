scoreboard players operation block bsc = @s bsc
function cw_serializer:write

data modify block ~ ~ ~ {} merge from entity @s TileEntityData
kill @s