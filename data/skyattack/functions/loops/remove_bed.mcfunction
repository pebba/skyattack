# remove beds from intruders

# remove beds
clear @a[tag=north_intruder] minecraft:white_bed
clear @a[tag=north_intruder] minecraft:orange_bed
clear @a[tag=north_intruder] minecraft:magenta_bed
clear @a[tag=north_intruder] minecraft:light_blue_bed
clear @a[tag=north_intruder] minecraft:yellow_bed
clear @a[tag=north_intruder] minecraft:lime_bed
clear @a[tag=north_intruder] minecraft:pink_bed
clear @a[tag=north_intruder] minecraft:gray_bed
clear @a[tag=north_intruder] minecraft:light_gray_bed
clear @a[tag=north_intruder] minecraft:cyan_bed
clear @a[tag=north_intruder] minecraft:purple_bed
clear @a[tag=north_intruder] minecraft:blue_bed
clear @a[tag=north_intruder] minecraft:brown_bed
clear @a[tag=north_intruder] minecraft:green_bed
clear @a[tag=north_intruder] minecraft:red_bed
clear @a[tag=north_intruder] minecraft:black_bed

clear @a[tag=south_intruder] minecraft:white_bed
clear @a[tag=south_intruder] minecraft:orange_bed
clear @a[tag=south_intruder] minecraft:magenta_bed
clear @a[tag=south_intruder] minecraft:light_blue_bed
clear @a[tag=south_intruder] minecraft:yellow_bed
clear @a[tag=south_intruder] minecraft:lime_bed
clear @a[tag=south_intruder] minecraft:pink_bed
clear @a[tag=south_intruder] minecraft:gray_bed
clear @a[tag=south_intruder] minecraft:light_gray_bed
clear @a[tag=south_intruder] minecraft:cyan_bed
clear @a[tag=south_intruder] minecraft:purple_bed
clear @a[tag=south_intruder] minecraft:blue_bed
clear @a[tag=south_intruder] minecraft:brown_bed
clear @a[tag=south_intruder] minecraft:green_bed
clear @a[tag=south_intruder] minecraft:red_bed
clear @a[tag=south_intruder] minecraft:black_bed

# loop function every tick
schedule function skyattack:loops/remove_bed 1t
