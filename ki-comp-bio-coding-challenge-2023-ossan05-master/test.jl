######### HELPER TESTING FUNCTIONS - IGNORE THESE #########
function hd(a,b)
    return sum(collect(a) .!= collect(b))
end
function md(bc)
    m = Inf
    for i in 1:length(bc)
        for j in i+1:length(bc)
            d = hd(bc[i],bc[j])
            if d < m
                m = d
            end
        end
    end
    return m
end
function rc(bc)
    for i in 2:length(bc)
        if bc[i]==bc[i-1]
            return false
        end
    end
    return true
end
function check_barcode_set(barcode_set,distance_threshold)
    l = length.(barcode_set)
    return maximum(l)==minimum(l) && prod(rc.(barcode_set)) && md(barcode_set) >= distance_threshold
end
function print_nothing(s)
    if s != nothing
        println(s)
    else
        println("nothing")
    end
end
######### HELPER TESTING FUNCTIONS - IGNORE THESE #########

#This block will test your functions on example cases.
try
    println("Question 0.")
    test0 = Q0_My_Name_Is()
    if test0 == "your_full_name_and_email_address_if_you_want_us_to_know_who_you_are"
        println("Q0: Placeholder answer has NOT been modified. Please make this function return your name and email address!")
    else
        println("Q0: You are identifying yourself as: ", test0)
    end
catch
    println("Q0: Encountered an error. Plese just make this function return your name and email as a string.")
end
println()


try
    println("Question 1.")
    println("Trying: Q1_GC_Content(\"GCATGCACATAGCAGCGAGCTACTACATCGCGGCTAGACTACTGAGCGA\")")
    println("Should return: 55.10204081632652")
    test1 = Q1_GC_Content("GCATGCACATAGCAGCGAGCTACTACATCGCGGCTAGACTACTGAGCGA")
    print("Yours returns: ")
    print_nothing(test1)
    if test1 == 55.10204081632652
        println("Q1: PASSED on example case.")
    else
        println("Q1: FAILED on example case.")
    end
catch
    println("\nQ1: Encountered an error on example case.")
end
println()

try
    println("Question 2.")
    println("Trying: Q2_Translation(\"CAGGTGACCTTGAAGGAGTCTGGTCCTGCGCTAGTGAAACCCACACAGACCCTCACGCTGACCTGCACCTTCTCTGGGTTCTCA\")")
    println("Should return: QVTLKESGPALVKPTQTLTLTCTFSGFS")
    test2 = Q2_Translation("CAGGTGACCTTGAAGGAGTCTGGTCCTGCGCTAGTGAAACCCACACAGACCCTCACGCTGACCTGCACCTTCTCTGGGTTCTCA")
    print("Yours returns: ")
    print_nothing(test2)
    if test2 == "QVTLKESGPALVKPTQTLTLTCTFSGFS"
        println("Q2: PASSED on example case.")
    else
        println("Q2: FAILED on example case.")
    end
catch
    println("\nQ2: Encountered an error on example case.")
end
println()

try
    println("Question 3.")
    println("Trying: Q3_magically_annoying_coin(\"HTHHTH\")")
    println("Should return: -5.0875963352323845")
    test3 = Q3_magically_annoying_coin("HTHHTH")
    print("Yours returns: ")
    print_nothing(test3)
    if test3 == -5.0875963352323845
        println("Q3: PASSED on example case.")
    else
        println("Q3: FAILED on example case.")
    end
catch
    println("Q3: Encountered an error on example case.")
end
println()

try
    println("Question 4.")
    println("Trying: Q4_Biggest_Product([1.6, 0.56, 1.3, 1.5, 0.9, 1.5, 2.5, 1.1, 0.46, 0.65])")
    println("Should return: (3, 8)")
    test4 = Q4_Biggest_Product([1.6, 0.56, 1.3, 1.5, 0.9, 1.5, 2.5, 1.1, 0.46, 0.65])
    print("Yours returns: ")
    print_nothing(test4)
    if test4 == (3,8)
        println("Q4: PASSED on example case.")
    else
        println("Q4: FAILED on example case.")
    end
catch
    println("Q4: Encountered an error on example case.")
end
println()

try
    println("Question 5.")
    println("(Text answer. This only checks if the placeholder text has been changed)")
    test5 = Q5_Data_dumpster_diving()
    if test5 == "The 1722 elements are all cats. Element 430 is a Norwegian Forest Cat"
        println("Q5: Placeholder answer has NOT been modified. Please answer the question in the return line.")
    else
        println("Q5: Has been answered, and will be read by a real human. Your answer:\n", test5)
    end
catch
    println("Q5: Encountered an error.")
end
println()

try
    println("Question 6.")
    println("Trying: Q6_Array_yeet([-5, 9, -3, -2, -9, -2, 2, 11, -1, -4, -10, 21], [-4, -4, -2, -9, -2, 8, 3, 10, -2, -3, -9])")
    println("Should return: (10.0, [2, 12], [5])")
    test6 = Q6_Array_yeet([-5, 9, -3, -2, -9, -2, 2, 11, -1, -4, -10, 21], [-4, -4, -2, -9, -2, 8, 3, 10, -2, -3, -9])
    print("Yours returns: ")
    print_nothing(test6)
    if test6 != nothing && (test6[1] == 10.0 && sort(test6[2]) == [2,12] && sort(test6[3]) == [5])
        println("Q6: PASSED on example case.")
    else
        println("Q6: FAILED on example case.")
    end
catch
    println("Q6: Encountered an error on example case.")
end
println()

try
    println("Question 8.")
    println("Trying: Q8_Markovs_path(2, \"ATCGATCGAAATTTCCCCGGG\", [\"GCTATTTACTGTTCGATCGGG\", \"GCCTTTCGAGCTGTTGATGCC\", \"ATCGACCTTGGCCAAGGGCAT\", \"GAGTATACTGGTTGACGAGTA\", \"GTACGAAATGCTTCTTGCCCC\"])")
    println("Should return: 2")
    test8 = Q8_Markovs_path(2, "ATCGATCGAAATTTCCCCGGG", ["GCTATTTACTGTTCGATCGGG", "GCCTTTCGAGCTGTTGATGCC", "ATCGACCTTGGCCAAGGGCAT", "GAGTATACTGGTTGACGAGTA", "GTACGAAATGCTTCTTGCCCC"])
    print("Yours returns: ")
    print_nothing(test8)
    if test8 != nothing && (test8  == 2)
        println("Q8: PASSED on example case.")
    else
        println("Q8: FAILED on example case.")
    end
catch
    println("Q8: Encountered an error on example case.")
end
println()
    
try
    println("Question 9.")
    println("Trying: Q9_Barcodes(6,3)")
    println("Should return a barcode set that passes the conditions, with barcodes as short as possible.")
    test9 = Q9_Barcodes(6,3)
    print("Yours returns: ")
    print_nothing(test9)
    if test9 != nothing && length(test9)>=6 && check_barcode_set(test9,3)
        println("Q9: Barcode conditions PASSED on example case, with barcode lengths of: ", length(test9[1]))
    else
        println("Q9: Barcode conditions FAILED on example case.")
    end
catch
    println("Q9: Encountered an error on example case.")
end
println()
