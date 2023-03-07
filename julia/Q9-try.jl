import random

n, D, len = split(readline(), ", ")

c = "GCAT"
barcode = ""
res = []

for i in 1:n
    for i in 1:len
        barcode *= c[rand(1:4)]
    end
    push!(res, x)
    barcode = ""
end

println(res)