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

s = [[the he said: "it's all right"!]]
local q, quotedPart = string.match(s, "([\"'])(.-)%1")
print(quotedPart, q)

local p = "%[(=*)%[(.-)%]%1%]"
s = "a = [=[[[ something ]] ]==] ]=]; print(a)"
print(string.match(s,p))

print((string.gsub("hello Lua!", "%a", "%0-%0")))
print((string.gsub("hello Lua", "(.)(.)", "%2%1")))

s=[[the \quote{task} is to \em{change} that.]]
s=string.gsub(s, "\\(%a+){(.-)}", "<%1>%2</%1>")
print(s)

function trim(s)
    s = string.gsub(s, "^%s*(.-)%s*$", "%1")
    return s
end

s = [[
                nihea
    asdhfolasdf


    asdfasdf

    asdfasdf
    sadf            
    asdf                    
]]

print(trim(s))

local function expand(s) 
 return (string.gsub(s, "$(%w+)", _G))
end

name, status = "Lua", "great"

print(expand("$name is $status, isn't it?"))


function toxml(s)
s=string.gsub(s, "\\(%a+)(%b{})", function (tag, body)
    body = string.sub(body,2,-2)
    body = toxml(body)
    return string.format("<%s>%s</%s>",tag,body,tag)
end)
return s
end

print(toxml("\\title{the \\bold{bid} example}"))

local name, query, q = "al", "a+b = c", "yes or no"
print(name, query, q)

local function unescape(s)
    s=string.gsub(s,"+", " ")
    print(s)
    s=string.gsub(s, "%%(%x%x)", function(h) 
        return string.char(tonumber(h, 16))
    end)
    return s
end
print(unescape("a%2Bb+%3D+c"))
cgi = {}

local function decode(s)
for name, value in string.gmatch(s, "([^&=]+)=([^&=]+)") do
name=unescape(name)
value=unescape(value)
cgi[name]=value
end
end


-- decode("a%2Bb+%3D+c")
-- for k, v in cgi do
--     print("k => ",k,"v=>", v)
-- end

print(string.find(";$% **#$hello13", "%a*"))


function nocase(s)
    s= string.gsub(s, "%a", function(c) 
        return "["..string.lower(c)..string.upper(c).."]"
    end)
    return s
end

print(nocase("Hi there!"))

function code(s)
return (string.gsub(s, "\\(.)", function(x) 
    return string.format("\\%03d", string.byte(x))
end))
end

function decode(s)
return (string.gsub(s, "\\((%d%d%d))", function(d) 
return "\\"..string.char(tonumber(d))
end))
end

s=[[follow a typical string: "This is \"greate\"!".]]
print("decode: ", decode(string.gsub(code(s),'".-"', string.upper)))

s=code(s)
print("code(s):", s)
s=string.gsub(s, '".-"', string.upper)
print("string upper", s)
s=decode(s)
print("decode(s): ", s)




