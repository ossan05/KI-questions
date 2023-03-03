function Q2_Translation(inp::String)
    m = floor(Int, length(inp) / 3)
    res = ""
    LIST = Dict(("GCT", "GCC", "GCA", "GCG") .=> "A",
    ,("CGT", "CGC", "CGA", "CGG", "AGA", "AGG") .=> "R",
    ,("AAT", "AAC") .=> "N",
    ,("GAT", "GAC") .=> "D",
    ,("TGT", "TGC") .=> "C",
    ,("CAA", "CAG") .=> "Q",
    ,("GAA", "GAG") .=> "E",
    ,("GGT", "GGC", "GGA", "GGG") .=> "G",
    ,("CAT", "CAC") .=> "H",
    ,("ATT", "ATC", "ATA") .=> "I",
    ,("CTT", "CTC", "CTA", "CTG", "TTA", "TTG") .=> "L",
    ,("AAA", "AAG") .=> "K",
    ,"ATG" => "M",
    ,("TTT", "TTC") .=> "F",
    ,("CCT", "CCC", "CCA", "CCA", "CCG") .=> "P",
    ,("TCT", "TCC", "TCA", "TCG", "AGT", "AGC") .=> "S",
    ,("ACT", "ACC", "ACA", "ACG") .=> "T",
    ,"TGG" => "W",
    ,("TAT", "TAC") .=> "Y",
    ,("GTT", "GTC", "GTA", "GTG") .=> "V")

    for i in range(start = 1, stop = m, step=1)
        x = String(inp[begin:3])  
        inp = String(inp[4:end]) 
        res = res * LIST[x]   
    end
    return res
end
print(Q2_Translation("TCCACGAGAATCAATGGG"))