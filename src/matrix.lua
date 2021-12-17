local a = {
    {1,2,1},
    {1,2,1},
    {1,2,1},
}

local b = {
    {1,2,1},
    {1,2,1},
    {1,2,1},
}


local c = {
    {1,2,1},
    {1,2,1},
    {1,2,1},
}
for i = 1, 3, 1 do
    for j = 1, 3, 1 do
        c[i][j] = 0
        for k = 1, 3, 1 do
            c[i][j] = c[i][j] + a[i][k] * b[k][j]
            print(c[i][j])
        end
    end
end