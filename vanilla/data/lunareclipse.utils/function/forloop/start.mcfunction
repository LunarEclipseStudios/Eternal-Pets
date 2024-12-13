# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.

# Store the command, target and the path somewhere that it can be used later.
$data modify storage lunareclipse:utils temp_values.forloop.target set value "$(target)"
$data modify storage lunareclipse:utils temp_values.forloop.path set value "$(path)"
$data modify storage lunareclipse:utils temp_values.forloop.command set value "$(command)"

# Set the scoreboard for the loop to 0 to start.
$scoreboard players set $(path) lunareclipse_utils.global_values 0
$execute store result storage lunareclipse:utils temp_values.forloop.index int 1 run scoreboard players get $(path) lunareclipse_utils.global_values

# Start the loop.
function lunareclipse.utils:forloop/loop with storage lunareclipse:utils temp_values.forloop

# function lunareclipse.utils:forloop/start {target:"lunareclipse.respawningpets:pet_information",path:"pet_list",command:"lunareclipse.utils:forloop/test"}