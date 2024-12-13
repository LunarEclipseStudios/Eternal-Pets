# List of variables used:
# "Type" - The type of mob.
# "Data" - The mob's data.
# "Owner" - The UUID of the player that owns the pet.
# "UUID" - The UUID of the pet.
# "Pos_X"
# "Pos_Y"
# "Pos_Z"

# Spawn the mob if the chunks it was in are loaded.
$execute as @a[nbt={UUID:$(Owner)}] at @s run summon minecraft:$(Type) ~ ~ ~ $(Data)

# Execute as the freshly spawned pet and play their effects.
$execute as @e[type=minecraft:$(Type),nbt={UUID:$(UUID)}] at @s run function lunareclipse.respawningpets:events/just_respawned