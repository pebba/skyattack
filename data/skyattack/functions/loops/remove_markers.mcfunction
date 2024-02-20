# remove all snail markers placed from snail spawn eggs
kill @e[type=minecraft:armor_stand,tag=snail_n]
kill @e[type=minecraft:armor_stand,tag=snail_s]

# remove all crab markers placed from crab spawn eggs
kill @e[type=minecraft:armor_stand,tag=crab_n]
kill @e[type=minecraft:armor_stand,tag=crab_s]

# remove all hornet markers placed from hornet spawn eggs
kill @e[type=minecraft:armor_stand,tag=hornet_n]
kill @e[type=minecraft:armor_stand,tag=hornet_s]

# loop function every tick
schedule function skyattack:loops/remove_markers 1t
