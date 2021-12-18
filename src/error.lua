function foo(str)
if type(str) ~= "string" then
    error("string expected", 2)
end
end

-- foo(1)
f = multiload([[
    local x = 10
    io.lines("temp", "*L")
    print(x)
]])

f()