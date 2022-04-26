library("readr")
library("tidyverse")

# importar los datos del csv
data_cpu <- read.csv("/Users/esdras/Desktop/Practica 1 Seminario/CPU/DesempenioCPU.csv")

head(data_cpu)

#------ a
#Grafica de barras del rendimiento promedio, rendimiento máximo y
#rendimiento mínimo de los CPU fabricados por amdahl.
datos_col <- data_cpu[data_cpu$Compania == 'amdahl',]
promedio <- mean(datos_col$PRP)
maximo <- max(datos_col$PRP)
minimo <- min(datos_col$PRP)
view(promedio)
view(minimo)
view(maximo)

#Se crea una tabla con los datos solicitados
#promedio, máximo y mínimo
data_solution <- cbind(promedio, minimo, maximo)
barplot (data_solution, main="Diagrama de Barras", xlab= "Valores", ylab="Cantidades")

#------ b
#Gráfica que muestre la empresa que fabrica los CPU con el mayor
#rendimiento promedio, y la empresa que fabrica los CPU con el menor rendimiento promedio.

