using CSV, DataFrames, MultivariateStats, Plots

X = CSV.read("distances-updated.csv", DataFrame; header=1)
#data = select(X, Not(:id), Not(:categorical_var), Not(:text_var))
data = Matrix(X)

println(typeof(data))

println(data[1:2, 1:4])

data[1, 3] = parse(Float64, data[1, 3])
data[2, 3] = parse(Float64, data[2, 3])
println(data[1:2, 1:4])

data_piece = Matrix{Float64}(data[1:2, 1:4])
println(data_piece)
println(typeof(data_piece))


M = fit(MDS, data_piece; maxoutdim=2, distances=false)
Y = predict(M)

scatter(Y[1,:], Y[2,:], marker = :circle, linewidth = 0)