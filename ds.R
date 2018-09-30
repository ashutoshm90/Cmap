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
(rollno = 1:30)
(sname = paste("Student", 1:30, sep=''))
(gender = sample(c('M','F'), size = 30, replace=T, prob = c(.7,.3)))
(marks = floor(rnorm(30,mean=50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c("BBA","MBA"), size = 30, replace=T, prob = c(.5,.5)))
df1 = data.frame(rollno,sname,gender,marks,marks2,course, stringsAsFactors= F)
?data.frame
str(df1)
df1
head(df1)
tail(df1)
summary(df1)
df1$gender=factor(df1$gender)
df1$course=factor(df1$course)

summary(df1)
set.seed(1234)
(grade = sample(c('A','B','C','D'),size=30,replace=T,prob=c(.4,.2,.3,.1)))
(gradefac = factor(grade))
class(gradefac)
summary(gradefac)

(gradefacOD = factor(grade,ordered = T))
summary(gradefacOD)

(gradefacOD2 = factor(grade,ordered = T,c('C','B','A','D')))
summary(gradefacOD2)

(marks3 = ceiling(rnorm(30,60,5)))
(studentX = data.frame(marks, gradefacOD2))
boxplot(marks3 ~ gradefacOD2, data=studentX)
gender = factor(sample(c('M','F'),size=30,replace=T))
studentY = data.frame(marks,gradefacOD2,gender)
boxplot(marks3 ~ gradefacOD2 + gender, data=studentY)
aggregate(df1$marks, by=list(df1$gender), FUN = max)

#Lists


#Factor