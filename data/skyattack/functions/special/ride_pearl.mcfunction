# tag all unmounted pearls near the player
tag @e[type=ender_pearl,distance=..3,tag=!mounted] add potentialMount

# destroy pearls that have been thrown by the player while riding a pearl
execute as @s at @s if entity @e[type=ender_pearl,tag=mounted,distance=..3] run kill @e[type=ender_pearl,tag=potentialMount]

# if player is not riding a pearl, mount the nearest one
execute as @s at @s unless entity @e[type=ender_pearl,tag=mounted,distance=..5] run ride @s mount @e[type=ender_pearl,tag=potentialMount,sort=nearest,limit=1]
tag @e[type=ender_pearl,tag=potentialMount,sort=nearest,limit=1] add mounted
tag @e[type=ender_pearl,tag=potentialMount] remove potentialMount

# reset scoreboard
scoreboard players set @s pearlThrown 0
