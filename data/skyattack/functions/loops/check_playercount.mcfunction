# reset the player counts
scoreboard players set NorthCount playerCount 0
scoreboard players set SouthCount playerCount 0

# count the number of players on each team
execute as @a[team=north] run scoreboard players add NorthCount playerCount 1
execute as @a[team=south] run scoreboard players add SouthCount playerCount 1

# tag team-specific intruders
execute as @a[team=north,x=0,y=70,z=350,distance=..350] run tag @s add north_intruder
execute as @a[team=south,x=0,y=70,z=-350,distance=..350] run tag @s add south_intruder
execute as @a[tag=north_intruder,x=0,y=70,z=350,distance=351..] run tag @s remove north_intruder
execute as @a[tag=south_intruder,x=0,y=70,z=-350,distance=351..] run tag @s remove south_intruder

# count the number of intruders
scoreboard players set NorthIntruders intruderCount 0
scoreboard players set SouthIntruders intruderCount 0
execute as @a[tag=north_intruder] run scoreboard players add NorthIntruders intruderCount 1
execute as @a[tag=south_intruder] run scoreboard players add SouthIntruders intruderCount 1

execute if score NorthIntruders intruderCount > SouthCount playerCount run tp @a[team=north,x=0,y=70,z=350,distance=300..350,limit=1] 0 65 -350
execute if score SouthIntruders intruderCount > NorthCount playerCount run tp @a[team=south,x=0,y=70,z=-350,distance=300..350,limit=1] 0 65 350

# loop function every 5 ticks
schedule function skyattack:loops/check_playercount 5t
