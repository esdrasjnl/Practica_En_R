library("readr")
library("tidyverse")

# importar los datos del csv
data_presion <- read.csv("/Users/esdras/Desktop/Practica 1 Seminario/Presion/PresionSanguineaEdad.csv")

df_presion <- data.frame(data_presion)

cor(df_presion)
##0.65, si se puede hacer correlación lineal

data_regresion <- lm(Systolic.Blood.Pressure~Edad, data = df_presion)

# Grafica de regresión lineas
plot(df_presion$Edad, df_presion$Systolic.Blood.Pressure, 
     main="Regresión Lineal", ylab="Presión", xlab="Edad", col="blue")
    abline(data_regresion, col="black")
    
