# if team north wins
execute as @a[tag=carrier,team=north] run title @a times 40 100 60
execute as @a[tag=carrier,team=north] run title @a subtitle {"text":"is the winner!","color":"light_purple"}
execute as @a[tag=carrier,team=north] run title @a title {"text":"","bold":true,"color":"light_purple","extra":[{"text":"T","color":"#FF0000"},{"text":"e","color":"#FF7F00"},{"text":"a","color":"#FFFF00"},{"text":"m","color":"#00FF00"},{"text":" ","color":"#0000FF"},{"text":"N","color":"#4B0082"},{"text":"o","color":"#8B00FF"},{"text":"r","color":"#FF0000"},{"text":"t","color":"#FF7F00"},{"text":"h","color":"#FFFF00"}]}

# if team south wins
execute as @a[tag=carrier,team=south] run title @a times 40 100 60
execute as @a[tag=carrier,team=south] run title @a subtitle {"text":"is the winner!","color":"light_purple"}
execute as @a[tag=carrier,team=south] run title @a title {"text":"","bold":true,"color":"light_purple","extra":[{"text":"T","color":"#FF0000"},{"text":"e","color":"#FF7F00"},{"text":"a","color":"#FFFF00"},{"text":"m","color":"#00FF00"},{"text":" ","color":"#0000FF"},{"text":"S","color":"#4B0082"},{"text":"o","color":"#8B00FF"},{"text":"u","color":"#FF0000"},{"text":"t","color":"#FF7F00"},{"text":"h","color":"#FFFF00"}]}

# remove all players from the teams
team leave @a

# set gamemode to spectator for all players
gamemode spectator @a

# fancy stuff
execute as @a run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 100
execute as @a at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Colors:[I;16711680,65280,255],FadeColors:[I;16711680,65280,255]}]}}}}

# removes all attacker tags
execute as @a[tag=attacker] run tag @s remove attacker
execute as @a[tag=carrier] at @s run tag @s remove carrier
tag @a remove messaged_stolen

# removes bossbar
bossbar remove light_raid_bar
bossbar remove heavy_raid_bar

# resets all timers and scores
scoreboard players set light_timer_entity lightTimerScore -1
scoreboard players set heavy_timer_entity heavyTimerScore -1
scoreboard players set @a death 0
