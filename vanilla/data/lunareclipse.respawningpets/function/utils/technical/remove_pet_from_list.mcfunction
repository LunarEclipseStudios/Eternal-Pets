# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.

# Check if the current UUID matches the pet's and if it does then remove it.
$execute if data entity @s {UUID:$(value)} run data remove storage lunareclipse.respawningpets:pet_information pet_list[$(index)]