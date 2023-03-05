function Q4_Biggest_Product(inp::Vector{<:Number})
    n, xl = [], []
    x = 1
    b = sort(inp, rev=true)

    for i in b
        if i > 1
            push!(n, findall(x -> x == i, inp))
        end
    end
    t = sort(collect(unique(Iterators.flatten(n))))

    for i in range(start=2, stop=length(t), step=1)
        for j in inp[t[i - 1]:t[i] - 1]
            x *= j
        end
        if x > 1
            push!(xl, [t[i - 1], t[i]])
        end
        x = 1
    end
    return xl[1][1], xl[end][2]
end

print(Q4_Biggest_Product([1.6, 0.56, 1.3, 1.5, 0.9, 1.5, 2.5, 1.1, 0.46, 0.65]))