# remove all debuffs from the attackers during the raid
execute as @a[tag=attacker] run effect clear @s minecraft:mining_fatigue
execute as @a[tag=attacker] run effect clear @s minecraft:weakness
execute as @a[tag=attacker] run effect clear @s minecraft:hunger
execute as @a[tag=attacker,tag=!carrier] run effect clear @s minecraft:slowness

# loop function every tick
schedule function skyattack:raid/remove_debuffs 1t
