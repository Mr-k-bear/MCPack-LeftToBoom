
# 安全的队减少 timer
execute if score BoomA T matches 0 run scoreboard players remove BoomTimerA T 1
execute if score BoomB T matches 0 run scoreboard players remove BoomTimerB T 1
execute if score BoomC T matches 0 run scoreboard players remove BoomTimerC T 1
execute if score BoomD T matches 0 run scoreboard players remove BoomTimerD T 1
execute if score BoomE T matches 0 run scoreboard players remove BoomTimerE T 1

# timer 不能小于 0
execute if score BoomTimerA T matches ..0 run scoreboard players set BoomTimerA T 0
execute if score BoomTimerB T matches ..0 run scoreboard players set BoomTimerB T 0
execute if score BoomTimerC T matches ..0 run scoreboard players set BoomTimerC T 0
execute if score BoomTimerD T matches ..0 run scoreboard players set BoomTimerD T 0
execute if score BoomTimerE T matches ..0 run scoreboard players set BoomTimerE T 0

# 爆炸的队伍加上 timer
execute if score BoomA T matches 1 run scoreboard players add BoomTimerA T 1
execute if score BoomB T matches 1 run scoreboard players add BoomTimerB T 1
execute if score BoomC T matches 1 run scoreboard players add BoomTimerC T 1
execute if score BoomD T matches 1 run scoreboard players add BoomTimerD T 1
execute if score BoomE T matches 1 run scoreboard players add BoomTimerE T 1

# 如果 timer 超过 20 则爆炸
execute if score BoomTimerA T matches 20.. run execute as @a[team=A] at @s run execute as @s at @s if score @s Reset matches 200.. run function left_chunk_boom:boom
execute if score BoomTimerA T matches 20.. run scoreboard players set BoomTimerA T 0

execute if score BoomTimerB T matches 20.. run execute as @a[team=B] at @s run execute as @s at @s if score @s Reset matches 200.. run function left_chunk_boom:boom
execute if score BoomTimerB T matches 20.. run scoreboard players set BoomTimerB T 0

execute if score BoomTimerC T matches 20.. run execute as @a[team=C] at @s run execute as @s at @s if score @s Reset matches 200.. run function left_chunk_boom:boom
execute if score BoomTimerC T matches 20.. run scoreboard players set BoomTimerC T 0

execute if score BoomTimerD T matches 20.. run execute as @a[team=D] at @s run execute as @s at @s if score @s Reset matches 200.. run function left_chunk_boom:boom
execute if score BoomTimerD T matches 20.. run scoreboard players set BoomTimerD T 0

execute if score BoomTimerE T matches 20.. run execute as @a[team=E] at @s run execute as @s at @s if score @s Reset matches 200.. run function left_chunk_boom:boom
execute if score BoomTimerE T matches 20.. run scoreboard players set BoomTimerE T 0