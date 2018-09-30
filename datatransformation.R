library(dplyr)
dplyr::filter(mtcars, mpg > 25)
?mtcars
dplyr::filter(mtcars, gear==4)

mtcars %>% filter(mpg >25 , gear==4)
arrange(filter(mtcars, gear==4), wt)
count(arrange(filter(mtcars, gear==4), wt))
summarise(group_by(mtcars,am), mean(mpg))
summarise(group_by(mtcars,gear), mean(wt))
filter(mtcars, between(row_number(),5,n()-2))
mutate(mtcars,disp / 61.0237)
transmute(mtcars,disp/40)
slice(mtcars, 2)
?slice

slice(mtcars, 3:6)
summarise(group_by(mtcars, cyl),mean(disp),sd(disp))
summarise_all(group_by(mtcars, cyl),mean)
sample_frac(mtcars,.2,replace=F)
sample_n(mtcars,2,replace=F)
