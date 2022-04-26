library("readr")
library("tidyverse")

ventas <- read.csv("/Users/esdras/Desktop/Practica 1 Seminario/Ventas/VENTAS.csv")

head(ventas)

data_frame_ventas <- data.frame(ventas)

#a) TABLA DE FRECUENCIAS
#Frecuencia absoluta
#Realice la tabla de frecuencias acerca de las veces que se han realizado
#ventas a los países de Centro América (Guatemala, Belice, El Salvador,
#Honduras, Nicaragua, Costa Rica y Panamá).
paises <-  data_frame_ventas[data_frame_ventas$Country == "Guatemala"| data_frame_ventas$Country == "El Salvador" | 
           data_frame_ventas$Country == "Honduras" | data_frame_ventas$Country == "Nicaragua" | 
           data_frame_ventas$Country == "Costa Rica" | data_frame_ventas$Country == "Panama" | 
           data_frame_ventas$Country == "Belice",]

fr_abs <- table(paises$Country)
view(fr_abs)

#Frecuencia Acumulada
fr_acum <- cumsum(fr_abs)
view(fr_acum)

#Frecuencia Relativa
fr_rlva <- prop.table(fr_abs)
view(fr_rlva)

#Frecuencia Relativa Acumulada
fr_rlva_acum <- cumsum(fr_abs)
view(fr_rlva_acum)

#Generación de tabla de frecuencias
tabla_frecuencias <- cbind(fr_abs, fr_acum, fr_rlva, fr_rlva_acum)
tb_fr <- data.frame(tabla_frecuencias)
view(tb_fr)

#b)Grafica de barras de la frecuencia absoluta obtenida en el inciso a.
barplot(fr_abs, xlab = "Paises", ylab="Ventas", main = "Diagrama de Barras")

#c) Histograma de frecuencia acumulada obtenida en el inciso a.
hist(fr_acum, main="Histograma", ylab = "Frecuencia", xlab = "Frecuencia Acumulada")
