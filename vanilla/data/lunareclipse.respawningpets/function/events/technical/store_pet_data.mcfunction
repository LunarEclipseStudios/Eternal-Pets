# List of variables used:
# "UUID" - The UUID of the pet.

# Check if the pet is in a soul sand valley, and if it is then stop the rest of the command and remove the pet from the respawn list.
$execute if biome ~ ~ ~ minecraft:soul_sand_valley if data storage lunareclipse.respawningpets:pet_information {pet_list:["$(UUID)"]} run function lunareclipse.respawningpets:utils/send_notification {text:'["",{"text":"Be careful now.","color":"red"},{"text":" Your pet "},{"selector":"@e[type=#lunareclipse.respawningpets:pets,nbt={UUID:$(UUID)},limit=1]"},{"text": " is in a Soul Sand Valley. One wrong step and they won\'t make it out alive."}]',sound_pitch:0.1}
execute if biome ~ ~ ~ minecraft:soul_sand_valley run function lunareclipse.respawningpets:utils/remove_pet with entity @s
execute if biome ~ ~ ~ minecraft:soul_sand_valley run return fail

# Store the mob's UUID in a list.
$execute unless data storage lunareclipse.respawningpets:pet_information {pet_list:["$(UUID)"]} run data modify storage lunareclipse.respawningpets:pet_information pet_list prepend value "$(UUID)"

# Clear the variable
$data remove storage lunareclipse.respawningpets:pet_information pets."$(UUID)"

# Store the information based on the entity type.
$execute if entity @s[type=wolf] run data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Type set value "wolf"
$execute if entity @s[type=cat] run data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Type set value "cat"
$execute if entity @s[type=parrot] run data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Type set value "parrot"

# Store the primary info from the mob.
$data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Data set from entity @s
# Store the owner's UUID seperate, this will help us later.
$data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Owner set from entity @s Owner
# Store the pet's UUID seperate, this will help us later.
$data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".UUID set from entity @s UUID
# Store the pet's location.
$execute store result storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Pos_X int 1 run data get entity @s Pos[0]
$execute store result storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Pos_Y int 1 run data get entity @s Pos[1]
$execute store result storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Pos_Z int 1 run data get entity @s Pos[2]
# For some reason if a dimension hasn't been loaded yet, the check passes. To counteract this, I put the checks in the reverse order of how players would typically load them.
$execute in minecraft:the_end if entity @s[distance=..2] run data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Dimension set value "minecraft:the_end"
$execute in minecraft:the_nether if entity @s[distance=..2] run data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Dimension set value "minecraft:the_nether"
$execute in minecraft:overworld if entity @s[distance=..2] run data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Dimension set value "minecraft:overworld"
# Data overrides.
$data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Data.Sitting set value 0b
$data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Data.Health set value 6.0f
$data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Data.Fire set value -20
$data modify storage lunareclipse.respawningpets:pet_information pets."$(UUID)".Data.Motion set value [0.0d,0.0d,0.0d]