using CSV, DataFrames, MultivariateStats, Plots

X = CSV.read("distances-mac.csv", DataFrame; header=false)

data = Matrix{Float64}(X)

M = fit(MDS, data; maxoutdim=2, distances=true)
Y = predict(M)

scatter(Y[1,:], Y[2,:], marker = :circle, linewidth=0)
scatter!(Y)