suma <- function(a,b){ #Declaracion de la funcion
  resultado <- a + b
  return(resultado)  #Este es el valor que regresa
}

suma(5,2) #Llamada a la funcion

sum_power <- function(a=1,b=1){
  res1 <- a + b
  res2 <- a ^ b
  l <- list(suma=res1, pot=res2) #Generar una lista ya que no se permite retornar multiargumento
  return(l)
}

sum_power(4, 2) #llamar la funcion
sum_power(3, 3)$pot #llamar la funcion pero solo obtener el elemento pot
