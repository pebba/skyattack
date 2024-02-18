# check which team is attacking and tag them
execute as @a[team=north,scores={lightAttackTrigger=1..}] run tag @a[team=north] add attacker
execute as @a[team=south,scores={lightAttackTrigger=1..}] run tag @a[team=south] add attacker

# announce attack and which team is attacking
execute as @a[team=north,tag=attacker,limit=1] run tellraw @a "§7[§b§lSkyAttack§7] §r§cTeam North has initiated a light attack!"
execute as @a[team=south,tag=attacker,limit=1] run tellraw @a "§7[§b§lSkyAttack§7] §r§cTeam South has initiated a light attack!"


# set the beacons
setblock 0 70 350 minecraft:beacon
setblock 0 70 -350 minecraft:beacon

# special attack sound
playsound minecraft:item.goat_horn.sound.2 master @a ~ ~ ~ 100

# add bossbar timer
bossbar add light_raid_bar "§d§lLight Attack"
bossbar set light_raid_bar color red
bossbar set light_raid_bar players @a
bossbar set light_raid_bar max 900

# reset bossbar timer
scoreboard players set light_timer_entity lightTimerScore 900
execute store result bossbar light_raid_bar value run scoreboard players remove light_timer_entity lightTimerScore 0

# add cooldown for next attack for the team that triggered the attack (360000 ticks = 5h)
execute as @a[team=north,tag=attacker] run scoreboard players set @a[team=north] lightAttackCooldown 360000
execute as @a[team=south,tag=attacker] run scoreboard players set @a[team=south] lightAttackCooldown 360000

# disable trigger during attack for both teams
scoreboard players reset @a[team=north] lightAttackTrigger
scoreboard players reset @a[team=south] lightAttackTrigger
scoreboard players reset @a[team=north] heavyAttackTrigger
scoreboard players reset @a[team=south] heavyAttackTrigger