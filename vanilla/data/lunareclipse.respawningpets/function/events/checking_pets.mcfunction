# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.

# Check the current pet.
$function lunareclipse.respawningpets:events/technical/check_pet with storage lunareclipse.respawningpets:pet_information pets."$(value)"