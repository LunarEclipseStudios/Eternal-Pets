# List of variables used:
# "option" - The option being updated.
# "value_phrase" - The phrase that goes after the number count.

# Update the display.
$execute as @e[type=minecraft:text_display,tag=config.$(option),tag=config.display] at @s run data modify entity @s text set value '["",{"score":{"name":"config.$(option)","objective":"respawningpets.global_values"}},{"color":"white","text":"$(value_phrase)"}]'