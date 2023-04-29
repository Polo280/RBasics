#Jorge Alejandro Gonzalez Diaz - A00344893
#Act1 R

#EJERCICIO 1
x <- c(10, 11, 13, -1, 6,3)
x

#EJERCICIO 2
x.est <- c(mean(x), sd(x), var(x))
x.est

#EJERCICIO 3
sec <- 20:50
media <- mean(sec); suma <- sum(sec)
media; suma

#EJERCICIO 4
group <- -100:50
aleatorio <- sample(group, 10); aleatorio

#EJERCICIO 5
fb <- numeric(10)      #Create empty vector
fb[1] <- 1; fb[2] <- 1 #First two numbers are equal to 1
for (i in 3:13){
  fb[i] <- fb[i-1] + fb[i-2] #Calculate Fibonacci
}
fb

#EJERCICIO 6
max_min <- function(vect){
  max = vect[1]
  min = vect[1]
  for(i in vect){
    if(i > max){
      max = i
    }else if (i < min){
      min = i
    }
  }
  l = list(max,min)
  return(l)
}

a <- c(10, 20, 30, 4, 50, -60) #Default
b <- c(1000, 1000, 21, -23, -12, -234) #Custom vector
r1 <- max_min(a); r1
r2 <- max_min(b); r2

#EJERCICIO 7
mult_vect <- function(vectA, vectB){
  size <- length(vectA) #It will work since both are the same size
  results <- numeric(size)
  for (i in 1:size){
    r = vectA[i] * vectB[i]
    results[i] <- r
  }
  return(results)
}

a <- c(10, 20, 30, 4, 50, -60) #Default
b <- c(1000, 1000, 21, -23, -12, -234) #Custom vector
multiplicacion <- mult_vect(a, b)
multiplicacion

#EJERCICIO 8
contar <- function(vect, num){
  count <- 0
  for(i in vect){
    if(i==num){
      count <- count + 1
    }
  }
  return(count)
}

a <- c(1,4,5,2,7,5,1,0,5) #5 appears thrice
res <- contar(a, 5); res

#EJERCICIO 9
enesimo <- function(vect, separador){
  size <- length(vect)
  elements <- numeric(size/separador)
  elements[1] = vect[1]
  count = 1
  for(i in 2:(size/separador)){
    if(i == (count*separador + 1)){
      elements[count+1] <- vect[i]
      count <- count + 1
    }else{
      next
    }
  }
  return(elements)
}

v <- 1:100
result <- enesimo(v, 5)
result

