---
title: "Reproducible Research: Peer Assessment 1"
output: 
  html_document:
    keep_md: true
---


## Loading and preprocessing the data

```r
activityData <-  read.csv("data/activity.csv")


## What is mean total number of steps taken per day?

byDate <- split(activityData, as.Date(activityData$date))

totalPerDay <- lapply( names(byDate), function(x) sum( byDate[[x]]$steps,na.rm=TRUE ) )

hist( unlist(totalPerDay) )
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-1.png)

```r
## What is the average daily activity pattern?



## Imputing missing values



## Are there differences in activity patterns between weekdays and weekends?
```
