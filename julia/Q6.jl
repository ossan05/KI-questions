A = [-5, 9, -3, -2, -9, -2, 2, 11, -1, -4, -10]
B = [-4, -4, -2, -9, -2, 8, 3, 10, -2, -3, -9]

groups = []

x = 1
y = 1
while x <= length(A)
    if A[x] - B[y] < 2
        push!(groups, [x, y, "one"])
        global x += 1
        global y += 1
    elseif A[x+1] - B[y] < 2
        push!(groups, [x+1, y, "two"])
        global x += 2
        global y += 1
    elseif A[x] - B[y+1] < 2
        push!(groups, [x, y+1, "three"])
        global x += 1
        global y += 2
    end
end    


println(groups)