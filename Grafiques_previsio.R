#GR�FIQUES PREVISI�

datos = read.table("clipboard")
colnames(datos) <- c('hores_estudi','nota')

Hores_estudi=datos$hores_estudi
Nota = datos$nota

#Histograma
hist(rstandard(lm(Hores_estudi~Nota)))


#Gr�fiques residuals vs fitted i Normal Q-Q
plot(lm(Hores_estudi~Nota))

#GR�FIQUES PREVISI� AMB LOGARiTMES

Hores_estudi_log= scan("C:\\Users\\Iv�n Serrano\\Downloads\\hores_estudi_log",sep=",")
Notes_log= scan("C:\\Users\\Iv�n Serrano\\Downloads\\notes_log.txt",sep=",")

#Histograma
hist(rstandard(lm(Hores_estudi_log~Notes_log)))

#Gr�fiques residuals vs fitted i Normal Q-Q
plot(lm(Hores_estudi_log~Notes_log))