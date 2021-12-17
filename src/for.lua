
a = {-1}
-- 在一个列表中寻找一个值
local found = nil 
for i =1,#a do
    if a[i]<0 then
        found = i
        break
    end
end
print(found)
