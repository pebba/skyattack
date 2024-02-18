# clear the spawn area
fill -20 60 -20 30 75 30 air

# set the spawn points
spawnpoint @a[team=north] 0 65 -350
spawnpoint @a[team=south] 0 65 350

# set the beacon locations
setblock 0 70 -350 minecraft:bedrock
setblock 0 70 350 minecraft:bedrock

# teleport them to their islands
tp @a[team=north] 0 67 -350 facing 0 ~ 0
tp @a[team=south] 0 67 350 facing 0 ~ 0

# set the gamemode
gamemode survival @a

# set some default stuff
clear @a
time set 0
weather clear
recipe give @a *

# give temporary effects
effect give @a blindness infinite 9 true
effect give @a resistance infinite 9 true
effect give @a saturation infinite 9 true
effect give @a slowness infinite 9 true

# set the timer
scoreboard players set timer timer -1
scoreboard players set timer timer 14

# generate the islands
schedule function skyattack:territorial/generate_islands 3t

# start the timer loop
function skyattack:game_start_timer
