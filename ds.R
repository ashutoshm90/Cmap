# data structure in R

#Vector
x1 = seq(1,10,2)
sort(x1)
(x2 = rnorm(100))
plot(density(x2))
#Matrices
(m1 = matrix(1:12, nrow=4))
(m2 = matrix(1:12, ncol=4,byrow = T))

dim(m1)

attributes(m1)
#access elements
m1[1,3]
m1[c(1,4),c(1,2)]

#Array


#data Frame


#Lists


#Factor