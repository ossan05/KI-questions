A = [-5, 9, -3, -2, -9, -2, 2, 11, -1, -4, -10, 21]
B = [-4, -4, -2, -9, -2, 8, 3, 10, -2, -3, -9]


for i in A
    for j in B
        println(i - j)
    end
end

for i in B
    for j in A
        println(i - j)