#20tick
schedule function respawningpets:20tick 20t

#30stick
schedule function respawningpets:30stick 30s

#forceload0-0
execute in overworld run forceload add 0 0
execute in the_nether run forceload add 0 0
execute in the_end run forceload add 0 0

#scoreboards
scoreboard objectives add etp.respawnTimerTicks dummy
scoreboard objectives add etp.respawnTimerMinutes dummy
scoreboard objectives add noOwnerCheck dummy
scoreboard objectives add petCheck dummy
scoreboard objectives add petTime dummy
scoreboard objectives add ownerCheck dummy

#configScoreboards
scoreboard objectives add etp.configOptions dummy

#configDefaults
execute unless score eventMessages etp.configOptions matches 0.. run scoreboard players set eventMessages etp.configOptions 1
execute unless score respawnTime etp.configOptions matches 0.. run scoreboard players set respawnTime etp.configOptions 5