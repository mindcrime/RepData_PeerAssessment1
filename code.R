

# print( getwd() )

activityData <-  read.csv("data/activity.csv")

byDate <- split(activityData, as.Date(activityData$date))

totalPerDay <- lapply( names(byDate), function(x) sum( byDate[[x]]$steps,na.rm=TRUE ) )

hist( unlist(totalPerDay) )


