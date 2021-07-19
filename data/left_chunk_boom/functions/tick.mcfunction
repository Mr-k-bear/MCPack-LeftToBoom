# 清空当前分队
# 清空所有组的成员
team empty A
team empty B
team empty C
team empty D
team empty E

# 清除分队记录
scoreboard players set @a Team 0

# 清除队伍分配记录
scoreboard players set AllocTeam T 0

# 分队
execute as @a[limit=5] at @s run execute as @s at @s unless score @s Reset matches 0 run function left_chunk_boom:split_team

# 计算分队后的队伍信息
function left_chunk_boom:calc_num

# 计算安全标签和爆炸标签
function left_chunk_boom:test_boom

# 爆炸调试 正式版记得注释掉
# function left_chunk_boom:debug_show_boom

# 爆炸计时器 给一定时间容错，防止服务器的意外BUG
function left_chunk_boom:boom_timer