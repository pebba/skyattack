# initialize raid timer

# light raid timer
execute store result bossbar light_raid_bar value run scoreboard players remove light_timer_entity lightTimerScore 1
execute if score light_timer_entity lightTimerScore matches 0 run function skyattack:raid/end_raid

# heavy raid timer
execute store result bossbar heavy_raid_bar value run scoreboard players remove heavy_timer_entity heavyTimerScore 1
execute if score heavy_timer_entity heavyTimerScore matches 0 run function skyattack:raid/end_raid

# loop function every second
schedule function skyattack:raid/timer/raid_timer 1s
