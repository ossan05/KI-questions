n = 4
D = 4
len = 4

c = "GCAT"
barcode = ""
res = []

for i in 1:n
    for i in 1:len
        global barcode * c[rand(1:4)]
    end
    push!(res, barcode)
    barcode = ""
end

println(res)