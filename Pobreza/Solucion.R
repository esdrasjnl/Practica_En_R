library("readr")
library("tidyverse")

# importar los datos del csv
data_pobreza <- read.csv("/Users/esdras/Desktop/Practica 1 Seminario/Pobreza/PobrezaDesempleoAsesinatos.csv")

df_pobreza <- data.frame(data_pobreza)

cor(df_pobreza)
##0.8154184 si se puede hacer correlación lineal entre pobreza y desempleado

data_regresion1 <- lm(Porcentaje.con.ingresos.debajo.de.5000~Porcentaje.desempleado, data = df_pobreza)

# Grafica de regresión lineas
plot(df_pobreza$Porcentaje.con.ingresos.debajo.de.5000, df_presion$Porcentaje.desempleado, 
     main="Regresión Lineal", ylab="Pobreza", xlab="Desempleo", col="blue")
abline(data_regresion1, col="black")

###Pobreza y cantidad de asesinatos

####Regresión para pobreza-asesinatos
data_regresion1 <- lm(Porcentaje.con.ingresos.debajo.de.5000~Asesinatos.por.1000000.habitantes, data = df_pobreza)


plot(df_pobreza$Porcentaje.con.ingresos.debajo.de.5000, df_presion$Asesinatos.por.1000000.habitantes, 
     main="Regresión Lineal", ylab="Pobreza", xlab="Asesinatos", col="blue")
abline(data_regresion1, col="black")