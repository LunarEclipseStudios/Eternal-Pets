# Update the config.
function lunareclipse.respawningpets:config/option_types/toggle/update {option:"notifications"}
function lunareclipse.respawningpets:config/option_types/increment/update {option:"respawnTime",value_phrase:" minutes"}

# Play a sound.
execute at @e[type=marker,tag=respawningpets.config] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.25 2