c = "abc"
res = []

for i in 1:4
    b = ""
    for j in 1:4
        b *= c[rand(1:3)]
    end
    push!(res, b)
end

println(res)