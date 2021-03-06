# create a time series data

#first create a vector of numerical values
# 36 observations 
set.seed(1234)
(sales = round(runif(3*12)*100,0))
length(sales)


#This data can be daily, weekly, monthly, quartler, yearly data
#create yearly time series : start year 1980

#Yearly----
(yearlysales = ts(sales, start=c(1980), frequency=1))
(yearlysales1 = ts(sales, start=c(1980,3), frequency=1)) 
# 3rd yr from 1980



methods(class=ts)

#Quarterly -----
12/4  # freq=4
(qtrsales = ts(sales, start=c(1980), frequency=4))
plot(qtrsales)
#list data from Qtr3 1980 to  1985
window(qtrsales, start=c(1980, 3), end=c(1985, 2))


#Monthly -----
12/12  # freq=12 start month=Mar/ 1990
(monsales = ts(sales, start=c(1990,3), frequency=12))

#create data from Feb 2000 to Nov 2002
(monsales1 = ts(sales, start=c(2000,2), end=c(2002,11), frequency=12))
length(monsales1)

#see subset of sales data : May 2000 to Aug 2001
window(monsales1, start=c(2000, 5), end=c(2001, 8))
