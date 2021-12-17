function disk(cx, cy, r)
return function(x,y)
return (x - cx)^2+(y-cy)^2 <= r^2
end
end 



d = disk(1.0,3.0,4.0)
print(d(1,2))
