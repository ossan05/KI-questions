function Q0_My_Name_Is()
    #Make this function return your name and email address.
    return "Oskar Kinell, oskar.kinell@bahnhof.se"
end

function Q1_GC_Content(inp::String)
    bases = 0
    total_length = length(inp)

    for i in inp
        if i == 'G' || i == 'C'
            bases += 1
        end
    end

    return bases / total_length * 100
end

function Q2_Translation(inp::String)
    m = floor(Int, length(inp) / 3)
    res = ""
    LIST = Dict("A" => ["GCT", "GCC", "GCA", "GCG"],
    "R" => ["CGT", "CGC", "CGA", "CGG", "AGA", "AGG"],
    "N" => ["AAT", "AAC"],
    "D" => ["GAT", "GAC"],
    "C" => ["TGT", "TGC"],
    "Q" => ["CAA", "CAG"],
    "E" => ["GAA", "GAG"],
    "G" => ["GGT", "GGC", "GGA", "GGG"],
    "H" => ["CAT", "CAC"],
    "I" => ["ATT", "ATC", "ATA"],
    "L" => ["CTT", "CTC", "CTA", "CTG", "TTA", "TTG"],
    "K" => ["AAA", "AAG"],
    "M" => ["ATG"],
    "F" => ["TTT", "TTC"],
    "P" => ["CCT", "CCC", "CCA", "CCA", "CCG"],
    "S" => ["TCT", "TCC", "TCA", "TCG", "AGT", "AGC"],
    "T" => ["ACT", "ACC", "ACA", "ACG"],
    "W" => ["TGG"],
    "Y" => ["TAT", "TAC"],
    "V" => ["GTT", "GTC", "GTA", "GTG"])

    for i in range(start = 1, stop = m, step=1)
        x = String(inp[begin:3])  
        inp = String(inp[4:end])
        for (j, l) in LIST
            if x in l  
                res = res * j
            end
        end
    end
    return res
end


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

function Q5_Data_dumpster_diving()
    #Text only answer. Modify the obviously incorrect answer inside the return statement below.
    #Feel free to add as much explanation as you think you need, but make sure it all gets returned as one string.
    return "The 1722 elements are all cats. Element 430 is a Norwegian Forest Cat"
end

function Q6_Array_yeet(array_input_1::Vector{<:Number},array_input_2::Vector{<:Number})
    #Function content goes here
    #return optimal_score, deletion_positions_array_1 , deletion_positions_array_2
end

function Q8_Markovs_path(K::Int, query::String, refs::Vector{String})
    #Function content goes here
    #return min_switches
end

function Q9_Barcodes(number_of_barcodes_required::Int,min_distance_threshold::Int)
    #Function content goes here
    #return barcodes #Must be an array of type String.
end


