# List of variables used:
# "text" - The JSON formatted text for the message.
# "sound_pitch" - The pitch of the sound.

# Check if notifications are disabled and if they are then don't go any further.
execute if score config.notifications respawningpets.global_values matches 0 run return fail

# Play the sound.
$execute if entity @s[type=#lunareclipse.respawningpets:pets] on owner at @s run playsound minecraft:block.note_block.pling neutral @s ~ ~ ~ 1 $(sound_pitch) 1
$execute if entity @s[type=!#lunareclipse.respawningpets:pets] run playsound minecraft:block.note_block.pling neutral @s ~ ~ ~ 1 $(sound_pitch) 1

# Send the message.
$execute if entity @s[type=#lunareclipse.respawningpets:pets] on owner run tellraw @s $(text)
$execute if entity @s[type=!#lunareclipse.respawningpets:pets] run tellraw @s $(text)