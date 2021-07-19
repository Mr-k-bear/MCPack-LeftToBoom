
# 将玩家添加到当前队伍中
execute as @s if score NowUseTeam T matches 1 run team join A @s
execute as @s if score NowUseTeam T matches 2 run team join B @s
execute as @s if score NowUseTeam T matches 3 run team join C @s
execute as @s if score NowUseTeam T matches 4 run team join D @s
execute as @s if score NowUseTeam T matches 5 run team join E @s

# 记录分组情况
scoreboard players operation @s Team = NowUseTeam T