function Q4_Biggest_Product(inp::Vector{<:Number})
    n, xl = [], []
    x = 1

    for (i, j) in enumerate(inp)
        if j > 1
            push!(n, i)
        end
    end

    for i in range(start = 2, stop = length(n), step = 1)
        for j in inp[n[i - 1]:n[i] - 1]
            x *= j
        end
        if x > 1
            push!(xl, [n[i - 1], n[i]])
        end
        x = 1
    end
    return xl[1][1], xl[end][2]
end

print(Q4_Biggest_Product([1.6, 0.56, 1.3, 1.5, 0.9, 1.5, 2.5, 1.1, 0.46, 0.65]))