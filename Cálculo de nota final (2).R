#####################################
####### Cálculo de nota final #######
#####################################

# Objetivo: generar un algoritmo que nos posibilite el cálculo de la nota 
# que se necesita para pasar o que queremos sacar en una asignatura en específico.


Nota_final=function(porcentajes,calificaciones,a=3){
  n=length(calificaciones)
  Cfinal=(a-sum(porcentajes[1:n-1]*calificaciones[1:n-1]))/porcentajes[n]
  condi=ifelse(test = calificaciones[n]>=Cfinal,yes = "pasa la asignatura","no pasa la asignatura")
  return(cat("Con una nota en el trabajo final de", calificaciones[n], "el estudiante", condi, 
             "Esto debido a que la nota mínima para el parcial debe ser de", round(Cfinal,2)))
  return(cat("Nota mínima", Cfinal))
}
  
# En la asignatura de programación el docente sacó 4 notas:
# La primera correspondió a un taller con un peso del 20% de la materia,
# otra nota fue un quiz con un peso de 15%, la otra nota fue un trabajo
# practico que valió 25% y realizó un parcial que peso el 40% de la materia.
# Sé mis 3 primeras calificaciones, en el taller me saqué un 3.5, en el quiz
# un 2.3 y en el trabajo práctico tuve una nota de 2.5. Además creo sacaré
# una nota en parcial de 3.2 y quec con eso alcanzaré a pasar la asignatura,
# pero quisiera estar totalmente segura.


p=c(0.2,0.15,0.25,0.4)
sum(p)
c=c(3.5,2.3,2.5,3.2)

Nota_final(porcentajes = p,calificaciones = c)







