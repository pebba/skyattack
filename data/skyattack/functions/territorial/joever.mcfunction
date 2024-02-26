# give the player effects
execute as @a[tag=death_marked] run effect give @s minecraft:levitation 1 0 true
execute as @a[tag=death_marked] run effect give @s minecraft:glowing 1 0 true
execute as @a[tag=death_marked] run effect give @s minecraft:slowness 1 5 true
execute as @a[tag=death_marked] run effect give @s minecraft:darkness 1 0 true

# tp player to the sky
execute as @a[tag=death_marked] run tp @s ~ 400 ~

# summon arrows around the player
execute at @a[tag=death_marked,tag=!shot] run summon minecraft:arrow ~ ~300 ~ {Motion:[0.0,-5.0,0.0],CustomName:'{"text":"Allahs Erschießungskommando"}',damage:10000.0}

# add shot tag
execute as @a[tag=death_marked] run tag @s add shot
