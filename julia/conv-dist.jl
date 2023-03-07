using CSV, DataFrames

df = CSV.read("julia/distances.csv", DataFrame)

for row in eachrow(df)
    for col in eachcol(df)

        if isa(col, String)
            df[!, col] = parse.(Float64, df[!, col])
        end
    end
end

CSV.write("julia/distances-updated.csv", df)

