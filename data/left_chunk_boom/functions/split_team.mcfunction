
# 检测附近玩家的队伍
execute as @s at @s if score @s Team matches 0 run execute as @a[distance=0..16] run scoreboard players operation NowUseTeam T = @s Team

# 将自己加入到附近玩队伍
execute as @s if score @s Team matches 0 run function left_chunk_boom:add_team

# 分配一个新队伍
execute as @s if score @s Team matches 0 run scoreboard players operation AllocTeam T += ONE T

# 设置新分配队伍指针
execute as @s if score @s Team matches 0 run scoreboard players operation NowUseTeam T = AllocTeam T

# 将附近玩家全部加入到这个队伍
execute as @s at @s if score @s Team matches 0 run execute as @a[distance=0..16] run function left_chunk_boom:add_team

# 将自己加入到队伍
execute as @s if score @s Team matches 0 run function left_chunk_boom:add_team