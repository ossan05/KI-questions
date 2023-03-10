using CSV, DataFrames

# read CSV file into a DataFrame
X = CSV.read("julia/distances.csv", DataFrame)

# convert DataFrame to matrix
data = Matrix(X)

for i in 1:1721
    for j in 1:1722
        if isa(data[i, j], String)
            # data[i, j] = parse({Float64}, df[i, j])
            println(data[i, j])
        end
    end
end

# convert updated matrix back to a DataFrame and write to CSV file
df = DataFrame(data)
CSV.write("distances-updated.csv", df)