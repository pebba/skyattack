# summon the crab with armor stand and tag it with crab_n (facing north) or crab_s (facing south)

# crab north
execute as @e[type=minecraft:armor_stand,tag=crab_n] at @s run setblock ~ ~ ~ minecraft:observer
execute as @e[type=minecraft:armor_stand,tag=crab_n] at @s run setblock ~ ~ ~-1 minecraft:sticky_piston
execute as @e[type=minecraft:armor_stand,tag=crab_n] at @s run setblock ~ ~ ~-2 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=crab_n] at @s run setblock ~ ~ ~-3 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=crab_n] at @s run setblock ~-1 ~ ~-3 minecraft:observer[facing=north]
execute as @e[type=minecraft:armor_stand,tag=crab_n] at @s run setblock ~-1 ~ ~-2 minecraft:sticky_piston[facing=south]
execute as @e[type=minecraft:armor_stand,tag=crab_n] at @s run setblock ~-1 ~ ~-1 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=crab_n] at @s run setblock ~-1 ~ ~ minecraft:slime_block

# crab south
execute as @e[type=minecraft:armor_stand,tag=crab_s] at @s run setblock ~ ~ ~ minecraft:observer[facing=north]
execute as @e[type=minecraft:armor_stand,tag=crab_s] at @s run setblock ~ ~ ~1 minecraft:sticky_piston[facing=south]
execute as @e[type=minecraft:armor_stand,tag=crab_s] at @s run setblock ~ ~ ~2 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=crab_s] at @s run setblock ~ ~ ~3 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=crab_s] at @s run setblock ~1 ~ ~3 minecraft:observer
execute as @e[type=minecraft:armor_stand,tag=crab_s] at @s run setblock ~1 ~ ~2 minecraft:sticky_piston
execute as @e[type=minecraft:armor_stand,tag=crab_s] at @s run setblock ~1 ~ ~1 minecraft:slime_block
execute as @e[type=minecraft:armor_stand,tag=crab_s] at @s run setblock ~1 ~ ~ minecraft:slime_block
