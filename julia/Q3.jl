function Q3_magically_annoying_coin(inp::String)
    K = length(inp)
    res = 1
    n = 1
    for i in inp
        if i == 'H'
            res *= (n/K)
        elseif i == 'T'
            res *= (1-n/K)
        end
    n += 1
    end
    return log(res)
end

print(Q3_magically_annoying_coin("TTTTTTTTTTTTTTTTTHTTTTTHHTTTTTTHTTTHTTHHTTTTHHTHTTHHTHHHHHHHHHHHHTTTHHHTHTHHHTHHTTTHHHHHHTTHHHHHTHHH"))