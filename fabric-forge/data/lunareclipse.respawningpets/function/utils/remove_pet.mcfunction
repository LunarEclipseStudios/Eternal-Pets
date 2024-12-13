# List of variables used:
# "UUID" - The UUID of the pet.

# Remove the pet's data from the pet info.
$data remove storage lunareclipse.respawningpets:pet_information pets."$(UUID)"

# Remove the pet from the pet list.
function lunareclipse.utils:forloop/start {target:"lunareclipse.respawningpets:pet_information",path:"pet_list",command:"lunareclipse.respawningpets:utils/technical/remove_pet_from_list"}