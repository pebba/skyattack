# check which team is attacking and tag them
execute as @a[team=north,scores={heavyAttackTrigger=1..}] run tag @a[team=north] add attacker
execute as @a[team=south,scores={heavyAttackTrigger=1..}] run tag @a[team=south] add attacker

# announce attack and which team is attacking
execute as @a[team=north,tag=attacker,limit=1] run tellraw @a "§7[§b§lSkyAttack§7] §r§cTeam North has initiated a heavy attack!"
execute as @a[team=south,tag=attacker,limit=1] run tellraw @a "§7[§b§lSkyAttack§7] §r§cTeam South has initiated a heavy attack!"

# teleport all outside attackers in their base
execute as @a[team=north,tag=attacker,tag=outside] run tp @s 0 90 -350
execute as @a[team=south,tag=attacker,tag=outside] run tp @s 0 90 350
execute as @a[team=north,tag=attacker,tag=outside] run effect give @s minecraft:slow_falling 5 0 true
execute as @a[team=south,tag=attacker,tag=outside] run effect give @s minecraft:slow_falling 5 0 true

# set the beacons
setblock 0 70 350 minecraft:beacon
setblock 0 70 -350 minecraft:beacon

# special attack sound
playsound minecraft:item.goat_horn.sound.2 master @a ~ ~ ~ 100

# add bossbar timer
bossbar add heavy_raid_bar "§d§lHeavy Attack"
bossbar set heavy_raid_bar color red
bossbar set heavy_raid_bar players @a
bossbar set heavy_raid_bar max 3600

# reset bossbar timer
scoreboard players set heavy_timer_entity heavyTimerScore 3600
execute store result bossbar heavy_raid_bar value run scoreboard players remove heavy_timer_entity heavyTimerScore 0

# add cooldown for next attack for the team that triggered the attack (576000 ticks = 8h)
execute as @a[team=north,tag=attacker] run scoreboard players set @a[team=north] heavyAttackCooldown 576000
execute as @a[team=south,tag=attacker] run scoreboard players set @a[team=south] heavyAttackCooldown 576000

# disable trigger during attack for both teams
scoreboard players reset @a[team=north] lightAttackTrigger
scoreboard players reset @a[team=south] lightAttackTrigger
scoreboard players reset @a[team=north] heavyAttackTrigger
scoreboard players reset @a[team=south] heavyAttackTrigger

# heavy attack special
# allow tnt across the border (only placed blocks)
execute as @a[tag=attacker] run tag @s remove no_tnt
