data remove storage respawningpets:data2 FindOwnerUUID
data modify storage respawningpets:data2 FindOwnerUUID set from entity @s UUID

execute as @e[tag=dead,tag=!messageCheck] store success score @s petCheck run data modify storage respawningpets:data2 FindOwnerUUID set from entity @s Owner
execute as @e[tag=dead,tag=!messageCheck] if score @s petCheck matches 0 run tag @s add messageCheck

tellraw @s ["",{"text":"Oh no, Your pet died!","color":"red"},{"text":" Don't worry though they'll be back in 5 minutes!"}]
playsound block.note_block.pling master @s ~ ~ ~ 1.0 2.0

