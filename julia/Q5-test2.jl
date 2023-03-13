using CSV, DataFrames, MultivariateStats, Plots

X = CSV.read("distances-updated.csv", DataFrame; header=1)
data = Matrix(X)

println(typeof(data))

println(data[1:2, 1:4])

if typeof(data[1, 3]) <: String31
    println("works1")
end
if isa(data[1, 3], String)
    println("works 2")
end