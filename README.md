# Tmux

## 参考文档

* [Tmux使用手册](http://louiszhai.github.io/2017/09/30/tmux/)

## Tmux普通操作

### 会话管理 

#### 常用命令

| 命令 | 说明 |
:--:|:--
tmux new                    | 创建默认名称的会话（在tmux命令模式使用new命令可实现同样的功能<br>，其他命令同理，后文不再列出tmux终端命令）
tmux new -s mysession       | 创建名为mysession的会话
tmux ls                     | 显示会话列表
tmux a                      | 连接上一个会话
tmux a -t mysession         |  连接指定会话
tmux rename -t s1 s2        | 重命名会话s1为s2
tmux kill-session           | 关闭上次打开的会话
tmux kill-session -t s1     | 关闭会话s1
tmux kill-session -a -t s1  | 关闭除s1外的所有会话
tmux kill-server            | 关闭所有会话

#### 常用快捷键

| 命令 | 说明 |
:--:|:--
ctrl+b s  | 列出会话，可进行切换
ctrl+b $  | 重命名会话
ctrl+b d  | 分离当前会话
ctrl+b D  | 分离指定会话

### 窗口管理

| 命令 | 说明 |
:--:|:--
ctrl+b c    | 创建一个新窗口
ctrl+b ,    | 重命名当前窗口
ctrl+b w    | 列出所有窗口，可进行切换
ctrl+b n    | 进入下一个窗口
ctrl+b p    | 进入上一个窗口
ctrl+b l    | 进入之前操作的窗口
ctrl+b 0~9  | 选择编号0~9对应的窗口
ctrl+b .    | 修改当前窗口索引编号
ctrl+b '    | 切换至指定编号（可大于9）的窗口
ctrl+b f    | 根据显示的内容搜索窗格
ctrl+b &    | 关闭当前窗口

### 窗格管理

| 命令 | 说明 |
:--:|:--
ctrl+b %                    | 水平方向创建窗格
ctrl+b "                    | 垂直方向创建窗格
ctrl+b Up|Down|Left|Right   | 根据箭头方向切换窗格
ctrl+b q                    | 显示窗格编号
ctrl+b o                    | 顺时针切换窗格
ctrl+b }                    | 与下一个窗格交换位置
ctrl+b {                    | 与上一个窗格交换位置
ctrl+b x                    | 关闭当前窗格
ctrl+b space(空格键)         | 重新排列当前窗口下的所有窗格
ctrl+b !                    | 将当前窗格置于新窗口
ctrl+b Ctrl+o               | 逆时针旋转当前窗口的窗格
ctrl+b t                    | 在当前窗格显示时间
ctrl+b z                    | 放大当前窗格(再次按下将还原)
ctrl+b i                    | 显示当前窗格信息

## 配置说明

* 加载默认配置: `ctrl+b r`
* 横分屏: `ctrl+b |`
* 竖分屏: `ctrl+b -`
* 左右上下移动屏：`ctrl+b [hjkl]`

## 显示效果

![img/tmux.png](img/tmux.png)