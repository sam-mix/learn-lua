
a={1,2,3,4,5}
local v = 1
local i = 1
while a[i] do
    if a[i] == v then print(i); return i end
    i = i+1
end

