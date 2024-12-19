load("iris.rda")
#Los datos irirs tienen 150 observaciones
#Las variables son: sepal.length, sepal.width, petal.length y petal.width
# Eliminar la columna "type" que no aporta información numérica
iris_num <- iris[, -which(names(iris) == "type")]

# Calcular la matriz de distancias
dist_matrix <- dist(iris_num)

# Realizar clustering aglomerativo y divisivo

# Single Linkage
hc_single <- agnes(dist_matrix, method = "single")
plot(hc_single, main = "Single Linkage", which.plots = 2)

# Complete Linkage
hc_complete <- agnes(dist_matrix, method = "complete")
plot(hc_complete, main = "Complete Linkage", which.plots = 2)

# Average Linkage
hc_average <- agnes(dist_matrix, method = "average")
plot(hc_average, main = "Average Linkage", which.plots = 2)

# Clustering divisivo
hc_divisive <- diana(dist_matrix)
plot(hc_divisive, main = "Clustering Divisivo", which.plots = 2)

