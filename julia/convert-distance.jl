using CSV, DataFrames

# read CSV file into a DataFrame
X = CSV.read("julia/distances.csv", DataFrame; header=false)

# convert DataFrame to matrix
data = Matrix(X)

for i in 1:1722
    for j in 1:1722
        if typeof(data[i, j]) <: String31
            data[i, j] = parse(Float64, data[i, j])
            println(data[i, j])
        end
    end
end

println(typeof(data))
# convert updated matrix back to a DataFrame and write to CSV file
df = DataFrame(data, :auto)
CSV.write("distances-updated.csv", df)