# Cargar la biblioteca necesaria
library(cluster)

# Generar datos aleatorios
set.seed(123)
X <- data.frame(x = runif(20, 0, 10), y = runif(20, 0, 10))

# Visualización de los datos
plot(X$x, X$y, pch = 19, col = "blue", 
     xlab = "X1", ylab = "X2", main = "Datos Aleatorios")

# Clustering aglomerativo y divisivo

# Calcular la matriz de disimilaridad
dist_matrix <- dist(X)

# Clustering aglomerativo con Single Linkage
hc_single <- agnes(dist_matrix, method = "single")
plot(hc_single, main = "Single Linkage")

# Clustering aglomerativo con Complete Linkage
hc_complete <- agnes(dist_matrix, method = "complete")
plot(hc_complete, main = "Complete Linkage")

# Clustering aglomerativo con Average Linkage
hc_average <- agnes(dist_matrix, method = "average")
plot(hc_average, main = "Average Linkage")

# 3. Clustering divisivo con el método DIANA
hc_divisive <- diana(dist_matrix)
plot(hc_divisive, main = "Divisivo")

