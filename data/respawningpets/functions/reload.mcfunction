#20tick
schedule function respawningpets:20tick 20t

#30stick
schedule function respawningpets:30stick 30s

#forceload0-0
execute in overworld run forceload add 0 0
execute in the_nether run forceload add 0 0
execute in the_end run forceload add 0 0

#scoreboards
scoreboard objectives add respawnTimer dummy
scoreboard objectives add noOwnerCheck dummy
scoreboard objectives add petCheck dummy
scoreboard objectives add petTime dummy