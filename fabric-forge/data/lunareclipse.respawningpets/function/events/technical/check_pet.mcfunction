# List of variables used:
# "UUID"
# "Type" - The type of mob.
# "Data" - The mob's data.
# "Owner" - The UUID of the player that owns the pet.
# "Pos_X"
# "Pos_Y"
# "Pos_Z"
# "Dimension"

# Forceload the chunks to check.
$execute in $(Dimension) run forceload add $(Pos_X) $(Pos_Z)

# Run the second check, they are seperated to allow the forceload to set in.
$function lunareclipse.respawningpets:events/technical/check_pet_2 with storage lunareclipse.respawningpets:pet_information pets."$(UUID)"