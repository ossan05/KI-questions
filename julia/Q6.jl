A = [-5, 9, -3, -2, -9, -2, 2, 11, -1, -4, -10, 21]
B = [-4, -4, -2, -9, -2, 8, 3, 10, -2, -3, -9]

index_value_list_A, index_value_list_B = [], []


for (count, ele) in enumerate(A)
    push!(index_value_list_A, [])
    for (i, j) in enumerate(B)
        push!(index_value_list_A[count], (ele - j, i - count))
    end
end

for (count, ele) in enumerate(B)
    push!(index_value_list_B, [])
    for (i, j) in enumerate(A)
        push!(index_value_list_B[count], (ele - j, i - count))
    end
end

println(index_value_list_A)
println(index_value_list_B)