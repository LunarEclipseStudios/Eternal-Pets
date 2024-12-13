# List of variables used:
# "UUID"
# "Type" - The type of mob.
# "Data" - The mob's data.
# "Owner" - The UUID of the player that owns the pet.
# "Pos_X"
# "Pos_Y"
# "Pos_Z"

# Check if the pet exists in the world.
$execute in $(Dimension) positioned $(Pos_X) $(Pos_Y) $(Pos_Z) if entity @e[type=#lunareclipse.respawningpets:pets,nbt={UUID:$(UUID)},distance=..2] run return fail

# If the pet doesn't exist then respawn the pet on the player.
$function lunareclipse.respawningpets:events/technical/spawn_pet with storage lunareclipse.respawningpets:pet_information pets."$(UUID)"

# Remove the forceloaded chunks.
$execute in $(Dimension) run forceload remove $(Pos_X) $(Pos_Z)