# Reschedule the timed function.
function lunareclipse.respawningpets:utils/technical/update_timer with storage lunareclipse.respawningpets:global_values respawn_time

# Check if any pets are dead.
function lunareclipse.utils:forloop/start {target:"lunareclipse.respawningpets:pet_information",path:"pet_list",command:"lunareclipse.respawningpets:events/checking_pets"}