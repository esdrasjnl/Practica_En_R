install.packages("agricolae")
library("agricolae")

library("readr")
library("tidyverse")

# importar los datos del csv
data_decesos <- read.csv("/Users/esdras/Desktop/Practica 1 Seminario/DecesoSexoEdad/MuertesSexoEdad.csv")

head(data_decesos)

#conversión a dataframe
df_decesos <- data.frame(data_decesos)

#obtener datos que nos interesan
view(df_decesos)
datos_limpios <- df_decesos[df_decesos$Sex == 'Male' | df_decesos$Sex == 'Female',]
datos_limpios <- df_decesos[df_decesos$Age != 'Total',]
view(datos_limpios)

#Frecuencia absoluta
fr_abs <- table(datos_limpios$Age)
view((fr_abs))

#frecuencia aumulada
fr_acum <- cumsum(fr_abs)
view(fr_acum)

#Frecuencia relativa
fr_rlva <- prop.table(fr_abs)
view(fr_rlva)

#Frecuencia relativa acumulada
fr_rlva_acum <- cumsum(fr_rlva)
view(fr_rlva_acum)

tabla_frecuencias <- cbind(fr_abs,fr_acum,fr_rlva,fr_rlva_acum)
data_table_f <- data.frame(tabla_frecuencias)
view(data_table_f)


##Historograma para frecuencia absolita
hist(fr_abs, main="Histograma de Frecuencia Absoluta",ylab="Edad", xlab="Frecuencia")

#Polígono de frecuencias
poligo<-graph.freq(tabla_frecuencias,main = "Freccuencia Absoluta", xlab="Edad", ylab = "Decesos")

##diagrama de frecuencia acumulada
barplot(fr_acum, main = "Diagrama de frecuencia acumulada", xlab= "Edad", ylab = "Decesos",col="blue")



