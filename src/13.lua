x=3<<62
print(x)


print(string.format("%u", x))
print(string.format("0x%X", x))


function udiv(n,d)
if d < 0 then
    if math.ult(n, d) then return 0
    else return 1
    end
end
local q = ((n>> 1) // d) << 1
local r = n - q*d
if not math.ult(r,d) then q = q + 1 end
return q
end

s = string.pack("iii", 3,-27,450)
print(#s)
print(s)
print(string.unpack("iii", s))


s = "hello\0Lua\0world\0"
local i = 1
while i <= #s do
    local res
    res, i = string.unpack("z", s, i)
    print(res)
end


x=string.pack("i7", 1<<54)

-- print()
-- print()
-- print()

-- print(x)
-- print(string.unpack("i7", x))


s = "\xFF"
print(string.unpack("b", s))
print(string.unpack("B",s))


s=string.pack("s1", "hello")

for i = 1, #s  do 
    print((string.unpack("B", s, i)))
end

s = string.pack(">i4", 1000000)
for i = 1, #s do
    print((string.unpack("B", s, i)))
end

s=string.pack("<i2 i2", 500, 24)
for i = 1, #s do
    print((string.unpack("B", s,i)))
end

