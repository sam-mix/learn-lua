local M = {}

-- 创建一个新的复数
local function new(r, i) return {r=r, i=i} end

M.new = new -- 把 'new' 加载到模块中

-- constant 'i'
M.i = new(0, 1)

function M.add(c1,c2)
    return new(c1.r + c2.r, c1.i + c2.i)
end

-- function M.sub(c1, c2)
--     return new(c1.r - c2.r,c1)