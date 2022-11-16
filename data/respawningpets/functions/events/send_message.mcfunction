data remove storage respawningpets:data2 FindOwnerUUID
data modify storage respawningpets:data2 FindOwnerUUID set from entity @s Owner

execute as @r store success score @s ownerCheck run data modify storage respawningpets:data2 FindOwnerUUID set from entity @s UUID
execute as @a if score @s ownerCheck matches 0 run tellraw @s ["",{"text":"Oh no, Your pet died!","color":"red"},{"text":" Don't worry though, they'll be back in 5 minutes!"}]
execute as @a at @s if score @s ownerCheck matches 0 run playsound block.note_block.pling master @s ~ ~ ~ 1.0 2.0

execute if entity @a[scores={ownerCheck=0}] run tag @s add messageCheck
scoreboard players reset @e ownerCheck