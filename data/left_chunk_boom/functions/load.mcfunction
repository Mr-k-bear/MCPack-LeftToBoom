
#### 用于分队
# 记录玩家在哪个队伍中
scoreboard objectives add Team dummy

# 1-5对应A-E队伍，0为无队伍
scoreboard players set @a Team 0

# 分队时使用的临时数据
scoreboard objectives add T dummy

# 常量 ONE 1
scoreboard players set ONE T 1

# 变量 NowUseTeam 保存当前分组
scoreboard players set NowUseTeam T 0

# 变量 AllocTeam 保存当前分配到哪个队伍
scoreboard players set AllocTeam T 0

# TeamCount[A-E] 团队人数
scoreboard players set TeamCountA T 0
scoreboard players set TeamCountB T 0
scoreboard players set TeamCountC T 0
scoreboard players set TeamCountD T 0
scoreboard players set TeamCountE T 0

# Dimension[A-E] 团队所在维度
# 0:初始化 1:主世界 2:下界 3:末地
scoreboard players set DimensionA T 0
scoreboard players set DimensionB T 0
scoreboard players set DimensionC T 0
scoreboard players set DimensionD T 0
scoreboard players set DimensionE T 0

# Count[O|N|E] 维度里的人数
# O:主世界 N:下界 E:末地
scoreboard players set CountO T 0
scoreboard players set CountN T 0
scoreboard players set CountE T 0

# 标记团队是否安全
# 1:安全 0:安全
scoreboard players set SafeA T 0
scoreboard players set SafeB T 0
scoreboard players set SafeC T 0
scoreboard players set SafeD T 0
scoreboard players set SafeE T 0

# 标记团队是否爆炸
# 1:爆炸 0:正常
scoreboard players set BoomA T 0
scoreboard players set BoomB T 0
scoreboard players set BoomC T 0
scoreboard players set BoomD T 0
scoreboard players set BoomE T 0

# 变量 TeamTwoNum 记录有两个人的组的数量
scoreboard players set TeamTwoNum T 0

# 变量 DimensionFour 记录是否有一个维度有4个玩家
scoreboard players set DimensionFour T 0

# 变量 OneNumBoom 记录只有一个玩家的队伍是否爆炸
scoreboard players set OneNumBoom T 0

# 爆炸计时器
scoreboard players set BoomTimerA T 0
scoreboard players set BoomTimerB T 0
scoreboard players set BoomTimerC T 0
scoreboard players set BoomTimerD T 0
scoreboard players set BoomTimerE T 0

# 计分板 检测玩家复活
scoreboard objectives add Reset minecraft.custom:minecraft.time_since_death

# 最多5个分队
team add A
team add B
team add C
team add D
team add E

#### 加载成功
say "Loading success !!"