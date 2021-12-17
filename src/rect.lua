function rect(left, right, bottom, up)
return function(x,y)
return left <= x and x <= right and bottom <= y and y < up
end
end


r = rect(1,2,1,2)
print(r(1.5,1.5))