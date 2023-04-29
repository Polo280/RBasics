
data <- iris

boxplot(data$Sepal.Length) #Tipo de gráfica de cajas
hist(data$Sepal.Length)

boxplot(data$Sepal.Length ~ data$Species)
boxplot(data$Sepal.Length ~ data$Species, data, 
        boxfill = unique(as.integer(data$Species) + 1), main = "Species", xlab = "flor",
        ylab = "Sepal length")

#Try in console
#install.packages("rmarkdown")

df <- mtcars
M <- as.matrix(df)
heatmap(M)

heatmap(M, scale="column") #Transforma todas las escalas de 0 - 1

data <- iris
types <- data$Species
data <- data[,-5]
M.iris <- as.matrix(data)
heatmap(M.iris, scale = "column", Colv = NA) #ColV NA reresenta que el endograma solo se va a 
                                              #hacer en las filas pero no columnas