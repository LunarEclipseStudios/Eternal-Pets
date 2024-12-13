# List of variables used:
# "id" - The ID of the option.
# "display_name" - The display name of the option.
# "pos_x"

# Create the hitbox for the interaction.
$summon interaction ^$(pos_x) ^0 ^3 {width:1f,height:1f,Tags:["respawningpets.config","config.$(id)"],response:1b}
# Create the display.
$summon item_display ^$(pos_x) ^0.75 ^3 {Tags:["respawningpets.config","config.$(id)","config.display"],brightness:{sky:15,block:15},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-633980443,-965786644,-1236599343,-445874542],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTkxOWRkNzJlMzhjZWMzNjljNjUwODY4Njg5NmNjYjg0MTAwZmQwMjdjNGY2MGE2ODFkMTZhNzY0MDMyOWNjIn19fQ=="}]}}}}
$function lunareclipse.respawningpets:config/option_types/toggle/update {option:"$(id)"}
# Create the text.
$summon text_display ^$(pos_x) ^1 ^3 {Tags:["respawningpets.config", "config.text"],shadow:1b,background:16711680,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'{"color":"white","text":"$(display_name)"}',brightness:{sky:15,block:15}}