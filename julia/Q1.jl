function Q1_GC_Content(inp::String)
    bases = 0
    total_length = length(inp)

    for i in inp
        if i == 'G' || i == 'C'
            bases += 1
            println(i)
        end
    end
    println(bases)
    return bases / total_length * 100
end
print(Q1_GC_Content(readline()))