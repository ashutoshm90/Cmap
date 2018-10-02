# xts  - create object and export data
library('xts')
#create matrix : 1 col for 1 share
(stockprices = matrix(c(100,103, 105, 205, 210, 207, 530, 500, 535), ncol=3, byrow = F))
(cdtindex = c('25-09-2018', '27-09-2018', '28-09-2018'))
#convert to date format
(dtindex = as.Date(cdtindex, format="%d-%m-%Y"))
#now we have index + matrix for xts object

(ts_xts = xts(x=stockprices, order.by=dtindex))
#this series is not continuous but has missing dates

#-----
#matrix data extract
coredata(ts_xts)
#extract dates
index(ts_xts)


#write to csv file
write.zoo(ts_xts, "./data/zoodata.csv")

(stockpriceX = matrix(ceiling(runif(90,100,1000)), ncol=3, byrow = F))
(dates = as.Date("2018-09-01") + 0:29)
(time_series = xts(stockpriceX,order.by=dates))
coredata(time_series)
index(time_series)
write.zoo(time_series, "./data/stock.csv")
plot.xts(time_series)
