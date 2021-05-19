#####################################
####### Cálculo de nota final #######
#####################################

# Objetivo: generar un algoritmo que nos posibilite el cálculo de la nota 
# que se necesita para pasar o que queremos sacar en una asignatura en específico.

Nota_final=function(p1,p2,pfinal,c1,c2,a<-3,c3){
  Cfinal=(a-((p1*c1)+(p2*c2)))/pfinal
  Cfinal
  cal_asign=(p1*c1)+(p2*c2)+(pfinal*Cfinal)
  condi=ifelse(test=c3>=Cfinal,yes = "pasa la asignatura","no pasa la asignatura")
  return(cat("Con una nota en el parcial de", c3, "el estudiante", condi, 
             "Esto debido a que la nota mínima para el parcial debe ser de", round(Cfinal,2)))
  if(a > Cfinal){
    download.file(
      url = "https://www.flickr.com/photos/59816950@N08/5714073179", 
      destfile =  "Happy_face" ,
      file.show("Happy_face"))}else{download.file(
        url = "https://zoocloud.co/wp-content/uploads/2020/07/aguacate.jpg", 
        destfile =  "Sad_face" ,
        file.show("Sad_face"))}
}



# En la asignatura de programación el docente sacó 3 notas:
# una correspondiente a un taller con un peso del 25% de la materia
# otra fue un quiz dandole un peso de 20% y un parcial al cual le dio un peso
# de 55%, y sé mis calificaciones de los dos primerios, en el taller sé
# que obtuve un 3, y en el quiz un 2.2. Y creo que con una nota de 3 en 
# el parcial alcanzo a pasar, pero, quisiera estar más seguro por lo que
# requiero saber cuá es la nota mínima que debo sacar en el parcial, 
# para poder pasar la asignatura?


Nota_final(p1 = 0.25, p2=0.2, pfinal = 0.55,c1 = 3,c2 = 5, c3=5)



