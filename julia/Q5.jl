using CSV, DataFrames, MultivariateStats, Plots

X = CSV.read("distances-updated.csv", DataFrame; header=1)
# data = Matrix(X)

# for i in 1:1722, j in 1:1722
#     if typeof(data[i, j]) <: String31
#             data[i, j] = parse(Float64, data[i, j])
#     end
# end

data = Matrix{Float64}(data)

M = fit(MDS, data; maxoutdim=2, distances=false)
Y = predict(M)

scatter(Y[1,:], Y[2,:], marker = :circle, linewidth = 0)