(gender = sample(c('M','F'),size=100,replace=T, prob=c(.7,.3)))
(spl = sample(c("Finance","HR", "Marketing"), size=100, replace=T, prob=c(.4,.3,.3)))
(grade = sample(c("D","C","B","A"), size=100, replace = T, prob=c(.2,.3,.3,.2)))


(placement = sample(c('yes','no'), size=100, replace=T))
(experience = rnorm(100,mean=4,sd=1))
(age=ceiling(runif(100,21,30)))
?runif
?sample
(df = data.frame(gender,spl,grade,placement,experience,age,stringsAsFactors = TRUE))
str(df)
summary(df)
df$grade = factor(df$grade, ordered = T, c("D","C","B","A"))
summary(df)
plot(df$age,df$grade,type="b",col='red')
?plot
barplot(df$placement,df$gender)
?barplot
str(df)
head(df)
prop.table(table(df$gender))
write.csv(df, file = "./data/ximb.csv")
library("dplyr")
summarise(group_by(df,gender), mean(experience))
summarise(group_by(df,grade), mean(experience))
summarise(group_by(df,gender,spl), max(experience), mean(age))
count(group_by(df, gender, spl), placement)
?count
table(df$placement)
?table
df %>% group_by(gender,spl) %>% count(placement)
?filter

summarise(group_by(filter(df, spl==c("Marketing","HR")),gender,spl), max(experience), mean(age))
table(df)
?arrange
hist(df$age)
barplot(table(df$placement))
boxplot(df$age)
(labelx = paste(c("No-", "Yes-"), table(df$placement), "%", sep = ""))
table(df$gender, placement)
pie(table(df$placement), labels = labelx )
?hist

student = read.csv('./data/ximb.csv')
student
#cluster
km3 = kmeans(student[c('age','experience')], centers = 3)
km3
plot(student[c('age','experience')], col=km3$cluster)
km3$cluster
library(rpart)
library(rpart.plot)

tree = rpart(placement ~ . , data= student)
tree
rpart.plot(tree, nn=T, cex=1)
?rpart.plot
printcp(tree)
tree1 = prune(tree, cp=.125)
rpart.plot(tree1, nn=T, cex=1)
ndata = sample_n(student, 5)
ndata
?predict
predict(tree, ndata, type='class')
cbind(predict(tree, ndata, type='class'))
predict(tree, ndata, type='prob')


logitmodel = glm(placement ~ ., data=student, family = 'binomial')
summary(logitmodel)
logitmodel2 = glm(placement ~ age, data=student, family='binomial')
summary(logitmodel2)

linear = lm(age ~., data=student)
summary(linear)
linear1 = lm(age ~placement, data=student)
summary(linear1)
