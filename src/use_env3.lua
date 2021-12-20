a= 15 -- 创建一个全局变量
_ENV = {g = _G} -- 改变当前环境
a = 1 -- 在 _ENV 中创建一个字段
g.print(_ENV.a,a, g.a)

