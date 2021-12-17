print(string.match("hello world", "hello"))
local date = "Today is 17/7/1990"
local d = string.match(date, "%d+/%d+/%d+")
print(d)


local  s=string.gsub("Lua is cute", "cute", "great")
print(s)
s=string.gsub("all lii", "l", "x")
print(s)
s=string.gsub("Lua is great","Sol","Sun")
print(s)

s = "some string"
words={}
for w in string.gmatch(s, "%a+") do
    words[#words+1]=w
end

print(words)

print((string.gsub("one, and two; and three", "%a+", "word")))

print(string.match("the number 1298 is even", "%d+"))

local test = "int x; /* x */ int y; /* y */"
print((string.gsub(test, "/%*.*%/", "")))

print((string.gsub(test, "/%*.-%*/", "")))


s = "a (enclosed (in) parentheses) line"
print((string.gsub(s, "%b()","")))

s = "the anthem is the theme"
print((string.gsub(s, "%f[%w]the%f[%W]", "one")))

local pair = "name = Anna"
local key, value = string.match(pair, "(%a+)%s*=%s*(%a+)")
print(key, value)


local date = "Today is 17/7/1990"
local d,m,y = string.match(date, "(%d+)/(%d+)/(%d+)")
print(y, m, d)






