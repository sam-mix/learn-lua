 local function search(k, plist)
     for i = 1, #plist do
         local v = plist[i][k]
         if v then return v end
     end
 end

local function createClass(...)
    local c={}
    local parents={...}

    -- 在父类列表中查找类缺失的方法
    setmetatable(c, {__index = function (t,k)
        return search(k, parents)
    end})

    -- 将'c'作为其实例的元素
    c.__index = c

    -- 为新类定义一个新的构造函数
    function c:new(o)
        o = o or {}
        setmetatable(o, c)
        return o
    end
    return c
end

local Named = {}

function Named:getname()
    return self.name
end

function Named:setname(n)
    self.name = n
end



