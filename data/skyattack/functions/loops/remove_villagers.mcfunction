# remove zombie villagers --> remove focken op villagers
execute as @e[type=zombie_villager] run effect give @s invisibility infinite 1 true
execute as @e[type=zombie_villager] run data merge entity @s {DeathLootTable:"minecraft:empty"}
execute as @e[type=zombie_villager] run data merge entity @s {Silent:true}
execute as @e[type=zombie_villager] run kill @s

# loop function every tick
schedule function skyattack:loops/remove_villagers 1t
