using CSV, DataFrames, MultivariateStats, RDatasets, Plots

X = CSV.read("julia/distances.csv", DataFrame)
#data = select(X, Not(:id), Not(:categorical_var), Not(:text_var))
data = Matrix(X)

println(data[1722, 1722])

# M = fit(MDS, data; maxoutdim=2, distances=true)
# Y = predict(M)

# scatter(Y[1,:], Y[2,:], marker = :circle, linewidth = 0)