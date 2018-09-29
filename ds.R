# data structure in R

#Vector
x1 = seq(1,10,2)
class(x1)
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
m2[m2 > 5]

paste("C",1:100,sep="-")
(colnames(m1) = paste("C", 1:3,sep=""))
(rownames(m1)= paste("R",1:4,sep =""))
m1
attributes(m1)
m1[c('R1','R2'),'C1']
rbind(m1, c(13,14,15))  #temporary

colSums(m1)
rowSums(m1)

t(m1)
m1
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN="+") #rowise
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="*") #columise

addmargins(m1,1,sum)
addmargins(m1,2,sd)
addmargins(m1,2,mean)

addmargins(m1, c(1,2), list(list(mean,sum,max),list(var,sd))) #row and column wise



#Array


#data Frame


#Lists


#Factor