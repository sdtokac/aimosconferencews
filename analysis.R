#Analysis script for my awesome project 

#create data
apples <-data.frame(apples_id = as.factor(1:1000),
                    weight = rnorm(1000, 5 , 1))

write.csv(apples, 'data/apples_data.csv', row.names = FALSE)

#read data
apples <- read.csv('data/apples_data.csv')

#process data

apples$log_weight <- log(apples$weight)

#graphing
png('figs/hist_apple_weight.png')
#here also you can define weight and height by adding ti next to the code by coma

hist(apples$weight)
dev.off()
#the good thing about this function is that when you run the whole script 
#you dont have to manually export each plot instead it will creat all of them for you in a folder



