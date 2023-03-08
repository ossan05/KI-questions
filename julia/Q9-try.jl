n = 4
D = 4
len = 4

c = "GCAT"
barcode = ""
res = []

for i in 1:n
    global barcode
    prev_up = barcode
    barcode = ""
    println(prev_up)
    prev_left = 0
    for i in 1:len
        lim = deleteat!(collect(c), findfirst(x->x==prev_left,collect(c)))
        if length(res) > 0
            lim = deleteat!(lim, findfirst(x->x==prev_up[i],lim))
        end
        prev_left = lim[rand(1:length(lim))]
        barcode *= prev_left
    end
    push!(res, barcode)
end

println(res)