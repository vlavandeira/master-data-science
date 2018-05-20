titanic <- read.csv("train.csv")

rbind()
cbind()

misColumnasFavoritas <- c("Age", "Survived")

###MUCHO CÓDIGO QUE YO HE PROBADO EN CONSOLA, A COGERLO DE BASECAMP...

#Sigo con ejercicios aquí
#1. Filtra mujeres de 1ª clase con las columnas Survived and Fare
#2. % de supervivencia en este grupo (#1)

#1
mujeres1 <- titanic[titanic$Sex=="female" & titanic$Pclass==1,c("Survived","Fare")]

#2 96.8% de mujeres de 1ª sobrevivió
sum(mujeres1$Survived)/length(mujeres1$Survived)
#Otra opción es la media (equivalente)
mean(mujeres1$Survived, na.rm=TRUE)
#Otra opción con el df mujeres1 porque los dataframes no tienen longitud sino filas y columnas
sum(mujeres1$Survived)/nrow(mujeres1)

#Aplicar funciones sobre subgrupos del array para obtener varias tasas a la vez
tapply(titanic$Survived, titanic$Sex, mean)
tapply(titanic$Survived, titanic$Sex == "female" & titanic$Pclass==3, mean)
tapply(titanic$Survived, titanic$Pclass, mean)
#La funcion by nos permite aplicar sobre df en lugar de vector
by(titanic, titanic$Sex, summary) #Saca información de varias funciones por columna
aggregate(Survived~Sex, titanic, mean)
aggregate(Survived~Sex+Pclass, titanic, mean) #Usamos + para más factores separadores
aggregate(cbind(Survived,Age)~Sex+Pclass, titanic, mean) #Usamos cbind para más variables

#Calculo de la varianza, covarianza, correlacion
cor(titanic$Survived, titanic$Age, use="comple") #comple solo tomará las duplas que tiene ambas variables informadas
cor(titanic[,c("Survived","Age")], use="comple")

#install.packages("dplyr")
#dplyr nos permite hacer operaciones sobre datos de forma secuencial, más ordenada, legible
titanic %>%
  filter(Sex == "female")

titanic %>%
  group_by(Sex, Pclass) %>%
  summarise(mean(Survived))

#Más ejercicios
#1 Media de edad de hombres que sobrevivieron
#2 Cuantas personas sobrevivieron
#3 Cuantas personas fallecieron
#4 Cuantas personas viajaron en el titanic
#5 Ratio entre personas de primera clase y tercera
#6 Seleccionar columna Age y Sex para personas de primera clase
#7 Calcula la máscara para seleccionar los supervivientes de tercera clase o los hombres de primera que fallecieron

#8 Correlación entre edad y fare para cada sexo

#1
titanic %>%
  filter(Sex == "male" & Survived == 1 & !is.na(Age)) %>%
  summarise(mean(Age))

#2
titanic %>%
  filter(Survived == 1) %>%
  count()

#2 Más simple
sum(titanic$Survived)

#3
titanic %>%
  filter(Survived == 0) %>%
  count()

#3 Más simple
sum(!titanic$Survived)

#4 (pero no, tiene trampa)
titanic %>%
  count()

#4 Más simple (pero no, tiene trampa)
nrow(titanic)

#4 Lo correcto porque hubo 2 que no llegaron a embarcar
sum(titanic$Embarked != "")

#5 Da un porcentaje y no es lo que se quería...
nrow(titanic[titanic$Pclass==1,])/nrow(titanic[titanic$Pclass==3,])

#5 Lo correcto
sum(titanic$Pclass ==1) / sum(titanic$Pclass == 3)

#6
titanic[titanic$Pclass==1,c("Age","Sex")]

#6 con deplyr
titanic %>%
  filter(Pclass == 1) %>%
  select(c("Age","Sex"))

#7
mascaraSup3NoSup1=(titanic$Pclass==3 & titanic$Survived) |
  (titanic$Pclass==1 & titanic$Sex=='male' & !titanic$Survived)

View(titanic[mascaraSup3NoSup1,])
