local function p(x) print(x) end

p(os.time())
p(os.date())
p(os.date("%Y-%m-%d %H:%M:%S",os.time()))
p(os.date("%Y-%m-%d %X",os.time()))
p(os.date("a %A in %B"))

local t = os.date("*t")
p(os.date("%Y-%m-%d %X", os.time(t)))
t.day = t.day + 40
p(os.date("%Y-%m-%d %X", os.time(t)))

local x = os.clock()
local s = 0
for i = 1, 100000 do s = s + i end
p(string.format("elapsed time: %.6f\n", os.clock() - x))

