using MultivariateStats, RDatasets, Plots

iris = dataset("datasets", "iris")

x = Matrix(iris[1:2:end,1:4])'
x_labels = Vector(iris[1:2:end,5])

m = fit(MDS, x; maxoutdim=3, distances=false)

y = predict(m)

setosa = y[:,x_labels.=="setosa"]
versicolor = y[:,x_labels.=="versicolor"]
virginica = y[:,x_labels.=="virginica"]

scatter(setosa[1,:],setosa[2,:],setosa[3,:],marker=:circle,linewidth=0)
scatter!(versicolor[1,:],versicolor[2,:],versicolor[3,:],marker=:circle,linewidth=0)
scatter!(virginica[1,:],virginica[2,:],virginica[3,:],marker=:circle,linewidth=0)