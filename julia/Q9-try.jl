n = 4
D = 4
len = 4

c = "GCAT"
res = []

for i in 1:n
    barcode = ""
    prev = 0
    for i in 1:len
        lim = deleteat!(collect(c), findall(x->x==prev,collect(c)))
        prev = lim[rand(1:length(lim))]
        barcode *= prev
    end
    push!(res, barcode)
end

println(res)