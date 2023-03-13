using CSV, DataFrames, MultivariateStats, Plots

X = CSV.read("distances-mac.csv", DataFrame; header=false)

data = Matrix{Float64}(X)

M = fit(MDS, data; maxoutdim=2, distances=true)
Y = predict(M)
println(Y[1, 430])
println(Y[2, 430])

scatter(Y[1,:], Y[2,:], marker = :circle, linewidth=0)
scatter!((Y[1,430], Y[2,430]), marker = :circle, linewidth=0, color = :orange)