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
