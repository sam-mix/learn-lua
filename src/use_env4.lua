a=1
local newgt={}

setmetatable(newgt, {__index=_G})
_ENV = newgt
print(a)

a=10
print(a, _G.a)
_G.a = 20
print(a, _G.a)

_ENV={_G=_G}
local function foo()
    _G.print(a)
end
a=10
foo()
_ENV = {_G = _G, a = 20}
foo()

