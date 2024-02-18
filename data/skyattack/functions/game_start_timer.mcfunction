# count down timer
execute unless score timer timer matches 0 run scoreboard players remove timer timer 1

# display timer
execute if score timer timer matches 13 run title @a title {"text":"10","color":"green"}
execute if score timer timer matches 13 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100
execute if score timer timer matches 12 run title @a title {"text":"9","color":"green"}
execute if score timer timer matches 12 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100
execute if score timer timer matches 11 run title @a title {"text":"8","color":"green"}
execute if score timer timer matches 11 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100
execute if score timer timer matches 10 run title @a title {"text":"7","color":"green"}
execute if score timer timer matches 10 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100
execute if score timer timer matches 9 run title @a title {"text":"6","color":"green"}
execute if score timer timer matches 9 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100
execute if score timer timer matches 8 run title @a title {"text":"5","color":"green"}
execute if score timer timer matches 8 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100
execute if score timer timer matches 7 run title @a title {"text":"4","color":"green"}
execute if score timer timer matches 7 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100
execute if score timer timer matches 6 run title @a title {"text":"3","color":"green"}
execute if score timer timer matches 6 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100
execute if score timer timer matches 5 run title @a title {"text":"2","color":"green"}
execute if score timer timer matches 5 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100
execute if score timer timer matches 4 run title @a title {"text":"1","color":"green"}
execute if score timer timer matches 4 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 100
execute if score timer timer matches 3 run title @a title {"text":"","bold":true,"color":"light_purple","extra":[{"text":"H","color":"#FF0000"},{"text":"a","color":"#FF7F00"},{"text":"v","color":"#FFFF00"},{"text":"e","color":"#00FF00"},{"text":" ","color":"#0000FF"},{"text":"f","color":"#4B0082"},{"text":"u","color":"#8B00FF"},{"text":"n","color":"#FF0000"},{"text":" ","color":"#FF7F00"},{"text":"i","color":"#FFFF00"},{"text":"n","color":"#00FF00"},{"text":" ","color":"#0000FF"},{"text":"S","color":"#4B0082"},{"text":"k","color":"#8B00FF"},{"text":"y","color":"#FF0000"},{"text":"A","color":"#FF7F00"},{"text":"t","color":"#FFFF00"},{"text":"t","color":"#00FF00"},{"text":"a","color":"#0000FF"},{"text":"c","color":"#4B0082"},{"text":"k","color":"#8B00FF"},{"text":"!","color":"#FF0000"}]}
execute if score timer timer matches 3 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 100
execute if score timer timer matches 2 run effect clear @a
execute if score timer timer matches 0 run title @a reset
execute if score timer timer matches 0 run scoreboard players set timer timer -1

# loop function every second
schedule function skyattack:game_start_timer 1s
